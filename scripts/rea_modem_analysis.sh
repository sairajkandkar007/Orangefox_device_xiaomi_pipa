#!/usr/bin/env bash
set -euo pipefail
ROOT="$PWD"
MODEM_IMAGE="analysis/modem/images/NON-HLOS.bin"
BASE="analysis/modem/rea"
mkdir -p "$BASE/windows" "$BASE/regions" "$BASE/unblob" "$BASE/logs"
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export REA_BINWALK_COMMAND="$(command -v binwalk)"
export REA_UNBLOB_COMMAND="$(command -v unblob)"
{ rea --version || true; binwalk --version; unblob --version; } > "$BASE/tool-versions.txt" 2>&1

# REA accepts at most 128 MiB per input. Scan NON-HLOS in 120 MiB windows.
python3 - <<'PY'
from pathlib import Path
import hashlib, json
src = Path("analysis/modem/images/NON-HLOS.bin")
out = Path("analysis/modem/rea/windows")
out.mkdir(parents=True, exist_ok=True)
items = []
if src.is_file():
    width = 120 * 1024 * 1024
    size = src.stat().st_size
    with src.open("rb") as f:
        offset = 0
        index = 0
        while offset < size:
            length = min(width, size - offset)
            f.seek(offset)
            data = f.read(length)
            target = out / ("non-hlos-window-%02d.bin" % index)
            target.write_bytes(data)
            items.append({"file": str(target), "base_offset": offset,
                          "length": len(data), "sha256": hashlib.sha256(data).hexdigest()})
            offset += length
            index += 1
Path("analysis/modem/rea/windows.json").write_text(json.dumps(items, indent=2))
print("Created %d REA-sized NON-HLOS windows" % len(items))
PY

while IFS= read -r -d '' sample; do
  name="$(basename "$sample" .bin)"
  rea inspect-firmware-regions "$ROOT/$sample" --format json \
    > "$BASE/regions/$name.json" 2> "$BASE/logs/$name.stderr" || true
done < <(find "$BASE/windows" -type f -name '*.bin' -print0 | sort -z)

# Copy FAT contents through mtools in read-only source mode, without mounting.
# Try a volume beginning at byte zero first, then parse MBR partition starts
# and test both common 512-byte and 4096-byte logical-sector interpretations.
if [ -f "$MODEM_IMAGE" ] && file "$MODEM_IMAGE" | grep -Eqi 'FAT(12|16|32)|DOS/MBR'; then
  mkdir -p analysis/modem/extracted/NON-HLOS
  image_spec="$MODEM_IMAGE"
  if ! mdir -i "$image_spec" ::/ > "$BASE/logs/fat-root-listing.txt" 2>&1; then
    python3 - <<'PY' > "$BASE/logs/fat-offset-candidates.txt"
from pathlib import Path
p = Path("analysis/modem/images/NON-HLOS.bin")
data = p.read_bytes()[:512]
if len(data) >= 512 and data[510:512] == b"\\x55\\xaa":
    for i in range(4):
        entry = data[446 + 16*i:462 + 16*i]
        ptype = entry[4]
        start = int.from_bytes(entry[8:12], "little")
        count = int.from_bytes(entry[12:16], "little")
        if ptype and start and count:
            for sector in (512, 4096):
                print(start * sector)
PY
    while IFS= read -r offset; do
      [ -n "$offset" ] || continue
      candidate="$MODEM_IMAGE@@$offset"
      if mdir -i "$candidate" ::/ > "$BASE/logs/fat-root-listing-offset-$offset.txt" 2>&1; then
        image_spec="$candidate"
        echo "$offset" > "$BASE/logs/fat-selected-byte-offset.txt"
        break
      fi
    done < "$BASE/logs/fat-offset-candidates.txt"
  fi
  if mdir -i "$image_spec" ::/ > "$BASE/logs/fat-selected-listing.txt" 2>&1; then
    mcopy -s -i "$image_spec" '::*' analysis/modem/extracted/NON-HLOS/ \
      > "$BASE/logs/fat-copy.stdout" 2> "$BASE/logs/fat-copy.stderr" || true
  else
    echo "FAT extraction failed at byte zero and all parsed MBR partition offsets." \
      > "$BASE/logs/fat-extraction-limitation.txt"
  fi
fi

# Inspect and extract firmware-like files from the extracted modem filesystem.
python3 - <<'PY'
from pathlib import Path
import hashlib, json, re, subprocess, os
base = Path("analysis/modem/rea")
root = Path("analysis/modem/extracted")
limit = 128 * 1024 * 1024
pattern = re.compile(
    r"(^amss20\.bin$|^m3\.bin$|^wlan_mac\.bin$|^regdb.*\.bin$|"
    r"^bdwlan\.|^bd_.*\.elf$|\.(elf|mbn|mdt|bin|img)$)", re.I
)
candidates = []
if root.exists():
    for p in sorted(root.rglob("*")):
        if p.is_file() and pattern.search(p.name):
            size = p.stat().st_size
            if 0 < size <= limit:
                candidates.append({"source": str(p.resolve()),
                    "relative": str(p.relative_to(root)), "size": size,
                    "sha256": hashlib.sha256(p.read_bytes()).hexdigest()})
(base / "candidate-manifest.json").write_text(json.dumps(candidates, indent=2))
env = os.environ.copy()
env["PATH"] = str(Path.home() / ".cargo/bin") + ":" + str(Path.home() / ".local/bin") + ":" + env.get("PATH", "")
env["REA_BINWALK_COMMAND"] = str(Path.home() / ".cargo/bin/binwalk")
env["REA_UNBLOB_COMMAND"] = str(Path.home() / ".local/bin/unblob")
results = []
for i, item in enumerate(candidates):
    src = Path(item["source"])
    stem = "%04d-%s" % (i, src.name)
    region = base / "regions" / ("asset-" + stem + ".json")
    region_err = base / "logs" / ("asset-" + stem + ".stderr")
    with region.open("w") as stdout, region_err.open("w") as stderr:
        scan = subprocess.run(["rea", "inspect-firmware-regions", str(src), "--format", "json"],
                              stdout=stdout, stderr=stderr, env=env, timeout=180)
    dest = (base / "unblob" / ("asset-" + stem)).resolve()
    extract_report = base / "unblob" / ("asset-" + stem + ".json")
    extract_err = base / "logs" / ("unblob-" + stem + ".stderr")
    try:
        with extract_report.open("w") as stdout, extract_err.open("w") as stderr:
            extraction = subprocess.run(
                ["rea", "extract-firmware", str(src), str(dest),
                 "--max-depth", "3", "--format", "json"],
                stdout=stdout, stderr=stderr, env=env, timeout=300)
        extract_status = str(extraction.returncode)
    except subprocess.TimeoutExpired:
        extract_status = "timeout"
    results.append({**item, "region_exit": scan.returncode,
                    "region_report": str(region), "extract_status": extract_status,
                    "extract_report": str(extract_report)})
(base / "analysis-results.json").write_text(json.dumps(results, indent=2))
print("REA analyzed %d extracted modem firmware candidates" % len(results))
PY

python3 - <<'PY'
from pathlib import Path
import json
base = Path("analysis/modem/rea")
windows = json.loads((base / "windows.json").read_text())
candidates = json.loads((base / "candidate-manifest.json").read_text())
results = json.loads((base / "analysis-results.json").read_text())
lines = [
 "# Pipa modem firmware REA analysis", "",
 "Analysis engine: REA (https://github.com/morluto/rea), Binwalk 3.1.x and Unblob 26.6.x.",
 "All operations are static and read-only. No extracted program is executed and no modem NV/EFS partition is accessed.", "",
 "REA documents a 128 MiB maximum input per firmware operation. The approximately 259 MiB NON-HLOS image is split into non-overlapping 120 MiB windows. Window offsets are relative to each window; add its base offset from windows.json to recover original image offsets.", "",
 "- NON-HLOS windows: %d" % len(windows),
 "- Firmware-like files selected from extracted modem volume: %d" % len(candidates),
 "- Candidate analyses attempted: %d" % len(results), "",
 "## NON-HLOS windows", "",
 "| Window | Base offset | Bytes | SHA-256 |", "|---|---:|---:|---|"
]
for x in windows:
    lines.append("| %s | %d | %d | %s |" %
                 (Path(x["file"]).name, x["base_offset"], x["length"], x["sha256"]))
lines += ["", "## Extracted firmware candidates", "",
          "| Source-relative path | Bytes | SHA-256 | Binwalk exit | Unblob status |",
          "|---|---:|---|---:|---|"]
for x in results:
    lines.append("| %s | %d | %s | %s | %s |" %
                 (x["relative"], x["size"], x["sha256"], x["region_exit"], x["extract_status"]))
lines += [
 "", "## Evidence layout", "",
 "- regions/: REA JSON region reports for NON-HLOS windows and selected assets.",
 "- unblob/: REA extraction reports and runner-local extracted trees.",
 "- logs/: tool diagnostics and FAT extraction output.",
 "- tool-versions.txt: observed REA, Binwalk and Unblob versions.",
 "- windows.json, candidate-manifest.json, analysis-results.json: offsets, hashes and run statuses.",
 "", "## Limitations", "",
 "- A Binwalk signature is a candidate, not proof of a valid structure, boundary, encryption state or runtime behavior.",
 "- Unblob coverage is format-dependent. Review partial coverage, unknown chunks, missing extractors and diagnostics in the JSON reports.",
 "- REA firmware operations do not themselves decompile modem code. Native pseudocode requires a supported ELF and configured Ghidra, Hopper, IDA or Kuna provider; this workflow does not claim native decompilation.",
 "- NON-HLOS window offsets must be translated with windows.json.",
 "- Proprietary modem binaries and extracted payloads are not committed; only scripts and analysis metadata/reports are eligible for Git.", ""
]
Path("reports/PIPA_MODEM_REA_ANALYSIS.md").write_text("\n".join(lines))
PY
find "$BASE" -maxdepth 2 -type f -printf '%p\t%s bytes\n' | sort > analysis/modem/rea-file-list.txt
