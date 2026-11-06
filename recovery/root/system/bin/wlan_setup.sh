#!/system/bin/sh
# Copyright (C) 2026 Pipa OrangeFox contributors
# SPDX-License-Identifier: Apache-2.0

# Pipa uses the QCA6390/QCA6490 CLD3 vendor driver candidates.
# This loader intentionally uses only Pipa firmware and module files.
LOG=/tmp/pipa-wlan-loader.log
MODDIR=/vendor/lib/modules
FWROOT=/vendor/firmware
DEPFILE="$MODDIR/modules.dep"

log() {
    echo "[PIPA-WLAN] $*" >> "$LOG"
    echo "[PIPA-WLAN] $*" > /dev/kmsg 2>/dev/null
}

module_loaded() {
    name=$(basename "${1%.ko}" | tr '-' '_')
    grep -q "^$name " /proc/modules 2>/dev/null
}

# Recursively load dependencies when modules.dep is available in the vendor dump.
load_module() {
    rel="$1"
    base=$(basename "$rel")
    path=$(find "$MODDIR" -type f -name "$base" 2>/dev/null | head -n 1)
    [ -n "$path" ] && [ -f "$path" ] || return 1
    name=$(basename "${base%.ko}" | tr '-' '_')
    module_loaded "$name" && return 0

    # Mark before descending so an unexpected dependency cycle cannot recurse forever.
    state="/tmp/pipa-wlan-module-$name"
    [ ! -e "$state" ] || return 1
    : > "$state"

    if [ -f "$DEPFILE" ]; then
        line=$(grep -m1 -E "(^|/)$base:" "$DEPFILE" || true)
        deps=${line#*:}
        for dep in $deps; do
            depbase=$(basename "$dep")
            load_module "$depbase" || log "Dependency load failed: $depbase"
        done
    fi

    if insmod "$path" >> "$LOG" 2>&1; then
        log "Loaded $base"
        return 0
    fi
    log "Could not load $base (check vermagic, symbols and dmesg)"
    return 1
}

: > "$LOG"
log "Starting Pipa WLAN bring-up"
mkdir -p "$FWROOT"

# Prefer the chipset used by the active Pipa vendor configuration.
# QCA6490 is retained as a fallback candidate, never loaded alongside QCA6390.
if [ -d "$MODDIR" ]; then
    if load_module qca_cld3_qca6390.ko; then
        setprop twrp.wlan.chipset qca6390
        setprop twrp.wlan.drivers.loaded true
        exit 0
    fi
    if load_module qca_cld3_qca6490.ko; then
        setprop twrp.wlan.chipset qca6490
        setprop twrp.wlan.drivers.loaded true
        exit 0
    fi
fi

log "No Pipa WLAN module could be loaded; inspect $LOG and dmesg"
setprop twrp.wlan.drivers.loaded false
exit 0
