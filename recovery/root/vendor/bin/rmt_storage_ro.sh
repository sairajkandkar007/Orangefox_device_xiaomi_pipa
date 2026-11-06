#!/system/bin/sh
# Copyright (C) 2026 Pipa OrangeFox contributors
# SPDX-License-Identifier: Apache-2.0

# Expose modem NV/EFS partitions to rmt_storage through read-only loop devices.
# If any mapping cannot be made read-only, abort rather than run the vendor daemon.
set -eu

BY_NAME=/dev/block/bootdevice/by-name
SHADOW=/dev/block/bootdevice_ro/by-name
LOOP_DIR=/dev/rmt_ro
PARTITIONS="modemst1 modemst2 fsg fsc"

log() { echo "E:[PIPA-RMT] $*" >> /tmp/recovery.log; }

[ -d "$BY_NAME" ] || { log "Missing $BY_NAME"; exit 1; }
command -v losetup >/dev/null 2>&1 || { log "losetup is unavailable; refusing writable fallback"; exit 1; }

mkdir -p "$SHADOW" "$LOOP_DIR"

# Mirror all by-name entries, replacing only the four NV/EFS partitions.
for entry in "$BY_NAME"/*; do
    [ -e "$entry" ] || [ -L "$entry" ] || continue
    name=$(basename "$entry")
    case " $PARTITIONS " in
        *" $name "*) continue ;;
    esac
    ln -sfn "$entry" "$SHADOW/$name"
done

for part in $PARTITIONS; do
    src="$BY_NAME/$part"
    [ -e "$src" ] || { log "Missing partition $part; refusing to start"; exit 1; }
    loop=$(losetup --find --show --read-only "$src" 2>>/tmp/recovery.log || true)
    [ -n "$loop" ] || { log "Could not create read-only loop for $part"; exit 1; }
    [ "$(cat "/sys/class/block/$(basename "$loop")/ro" 2>/dev/null || echo 0)" = "1" ] || {
        log "$part loop device is not read-only"
        exit 1
    }
    ln -sfn "$loop" "$SHADOW/$part"
done

mount --bind "$SHADOW" "$BY_NAME" || { log "Could not bind read-only by-name view"; exit 1; }
exec /vendor/bin/rmt_storage "$@"
