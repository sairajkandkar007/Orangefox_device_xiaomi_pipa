#!/system/bin/sh
# Copyright (C) 2026 Pipa OrangeFox contributors
# SPDX-License-Identifier: Apache-2.0

# Pipa's vendor configuration provides the QCA6390 CLD3 profile and module.
# Do not try the QCA6490 alternative automatically: a second chipset driver
# must not be loaded merely because the first module failed.
LOG=/tmp/pipa-wlan-loader.log
MODDIR=/vendor/lib/modules
DEPFILE="$MODDIR/modules.dep"
MODULE=qca_cld3_qca6390.ko

log() {
    echo "[PIPA-WLAN] $*" >> "$LOG"
    echo "[PIPA-WLAN] $*" > /dev/kmsg 2>/dev/null
}

module_loaded() {
    name=$(basename "${1%.ko}" | tr '-' '_')
    grep -q "^$name " /proc/modules 2>/dev/null
}

load_module() {
    rel="$1"
    path="$MODDIR/$rel"
    [ -f "$path" ] || {
        log "Missing module: $path"
        return 1
    }

    name=$(basename "${rel%.ko}" | tr '-' '_')
    module_loaded "$name" && return 0

    state="/tmp/pipa-wlan-module-$name"
    [ ! -e "$state" ] || {
        log "Dependency cycle detected at $rel"
        return 1
    }
    : > "$state"

    # Follow the vendor modules.dep file if the firmware image provides one.
    # The current Pipa vendor dump may omit it; in that case insmod reports
    # unresolved symbols explicitly in this log and dmesg.
    if [ -f "$DEPFILE" ]; then
        line=$(grep -m1 -E "^$rel:" "$DEPFILE" || true)
        deps=${line#*:}
        for dep in $deps; do
            dep=${dep#"$MODDIR/"}
            if ! load_module "$dep"; then
                log "Required dependency failed: $dep"
                return 1
            fi
        done
    fi

    if insmod "$path" >> "$LOG" 2>&1; then
        log "Loaded $rel"
        return 0
    fi

    log "Failed to load $rel; inspect this log and dmesg for vermagic/symbol errors"
    return 1
}

: > "$LOG"
log "Starting Pipa QCA6390 WLAN setup"

if load_module "$MODULE"; then
    setprop twrp.wlan.chipset qca6390
    setprop twrp.wlan.drivers.loaded true
    exit 0
fi

setprop twrp.wlan.drivers.loaded false
log "WLAN driver setup failed; Wi-Fi will remain unavailable"
exit 0
