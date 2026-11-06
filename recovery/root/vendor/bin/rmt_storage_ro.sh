#!/system/bin/sh
# Copyright (C) 2026 Pipa OrangeFox contributors
# SPDX-License-Identifier: Apache-2.0

# rmt_storage can write modem NV/EFS. Redirect its by-name view to read-only
# loop devices. If any partition or read-only mapping is unavailable, abort.
set -eu

BY_NAME=/dev/block/bootdevice/by-name
SHADOW=/dev/block/bootdevice_ro/by-name
LOOP_DIR=/dev/rmt_ro
PARTITIONS="modemst1 modemst2 fsg fsc"

log() {
    echo "E:[PIPA-RMT] $*" >> /tmp/recovery.log
}

[ -d "$BY_NAME" ] || { log "Missing Pipa by-name directory: $BY_NAME"; exit 1; }
command -v losetup >/dev/null 2>&1 || { log "losetup unavailable; refusing writable fallback"; exit 1; }

mkdir -p "$SHADOW" "$LOOP_DIR"

# Resolve original links before replacing the by-name directory; this avoids
# creating symlinks that point back into the directory being bind-mounted.
for entry in "$BY_NAME"/*; do
    [ -e "$entry" ] || [ -L "$entry" ] || continue
    name=$(basename "$entry")
    case " $PARTITIONS " in
        *" $name "*) continue ;;
    esac
    target=$(realpath "$entry" 2>/dev/null || true)
    [ -n "$target" ] || { log "Could not resolve original partition link $entry"; exit 1; }
    ln -sfn "$target" "$SHADOW/$name"
done

for part in $PARTITIONS; do
    src="$BY_NAME/$part"
    [ -e "$src" ] || { log "Missing Pipa partition $part; refusing to start"; exit 1; }

    loop=$(losetup -j "$src" 2>/dev/null | cut -d: -f1 || true)
    if [ -z "$loop" ]; then
        loop=$(losetup -frs "$src" 2>>/tmp/recovery.log || true)
    fi
    [ -n "$loop" ] || { log "Could not create read-only loop for $part"; exit 1; }

    loop_name=$(basename "$loop")
    [ "$(cat "/sys/class/block/$loop_name/ro" 2>/dev/null || echo 0)" = "1" ] || {
        log "$part loop device is not read-only"
        exit 1
    }
    ln -sfn "$loop" "$SHADOW/$part"
done

mount --bind "$SHADOW" "$BY_NAME" || { log "Could not bind read-only by-name view"; exit 1; }

for part in $PARTITIONS; do
    real=$(realpath "$BY_NAME/$part" 2>/dev/null || true)
    loop_name=$(basename "$real")
    [ "$(cat "/sys/class/block/$loop_name/ro" 2>/dev/null || echo 0)" = "1" ] || {
        log "$part is not backed by a read-only loop device; aborting"
        exit 1
    }
done

exec /vendor/bin/rmt_storage "$@"
