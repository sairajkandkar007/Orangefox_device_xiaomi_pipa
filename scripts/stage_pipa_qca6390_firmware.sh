#!/usr/bin/env bash
# Stage Pipa QCA6390 firmware extracted from stock NON-HLOS.
# Copies only into the caller-selected staging directory; never writes modem NV/EFS.
set -euo pipefail
SOURCE_ROOT="${1:-analysis/modem/extracted/NON-HLOS/image/qca6390}"
DEST_ROOT="${2:-analysis/recovery-firmware-stage/vendor/firmware/wlan/qca_cld/qca6390}"
VENDOR_CFG="${3:-recovery/root/vendor/etc/wifi/qca6390/WCNSS_qcom_cfg.ini}"
REPORT="${4:-reports/PIPA_QCA6390_FIRMWARE_STAGING.md}"
[[ -d "$SOURCE_ROOT" ]] || { echo "Missing QCA6390 source: $SOURCE_ROOT" >&2; exit 2; }
mkdir -p "$DEST_ROOT" "$(dirname "$REPORT")"
{
  printf '# Pipa QCA6390 firmware staging report\n\n'
  printf '%s\n' '- Source: extracted stock NON-HLOS image/qca6390 directory.'
  printf '%s\n' '- Destination: temporary recovery firmware staging root; proprietary binaries are not committed to Git.'
  printf '%s\n' '- All board-data variants are retained because the exact runtime board ID has not been proven.'
  printf '%s\n' '- wlan_mac.bin was not found and is not fabricated.'
  printf '\n| File | Bytes | SHA-256 |\n|---|---:|---|\n'
} > "$REPORT"
declare -A copied=()
allowlisted=(amss20.bin m3.bin bdwlan.elf regdb.bin regdb_j11.bin)
while IFS= read -r -d '' f; do allowlisted+=("$(basename "$f")"); done < <(
  find "$SOURCE_ROOT" -maxdepth 1 -type f \( -name 'bd_*.elf' -o -name 'bdwlan.e*' \) -print0 | sort -z
)
for name in "${allowlisted[@]}"; do
  [[ -n "$name" && -z "${copied[$name]+x}" ]] || continue
  copied[$name]=1
  src="$SOURCE_ROOT/$name"
  [[ -f "$src" ]] || continue
  case "$name" in
    amss20.bin|m3.bin|bdwlan.elf|regdb.bin|regdb_j11.bin|bd_*.elf|bdwlan.e*) ;;
    *) echo "Refusing non-allowlisted asset: $name" >&2; exit 3 ;;
  esac
  dst="$DEST_ROOT/$name"
  install -m 0644 "$src" "$dst"
  shash="$(sha256sum "$src" | awk '{print $1}')"
  dhash="$(sha256sum "$dst" | awk '{print $1}')"
  [[ "$shash" == "$dhash" ]] || { echo "SHA-256 mismatch: $name" >&2; exit 4; }
  printf '| %s | %s | %s |\n' "$name" "$(stat -c '%s' "$dst")" "$dhash" >> "$REPORT"
done
if [[ -f "$VENDOR_CFG" ]]; then
  install -m 0644 "$VENDOR_CFG" "$DEST_ROOT/WCNSS_qcom_cfg.ini"
  printf '| WCNSS_qcom_cfg.ini (vendor config) | %s | %s |\n' "$(stat -c '%s' "$DEST_ROOT/WCNSS_qcom_cfg.ini")" "$(sha256sum "$DEST_ROOT/WCNSS_qcom_cfg.ini" | awk '{print $1}')" >> "$REPORT"
else
  printf '\nWARNING: vendor WCNSS_qcom_cfg.ini unavailable; config not staged.\n' >> "$REPORT"
fi
count="$(find "$DEST_ROOT" -maxdepth 1 -type f | wc -l)"
printf '\nTotal staged files: %s\n' "$count" >> "$REPORT"
echo "Staged $count QCA6390 firmware/config files into $DEST_ROOT"
