#!/system/bin/sh
# Pipa OrangeFox WLAN module loader.
# Try the QCA6390 module first; fall back to QCA6490 if it cannot be inserted.
# A successful insmod only means the kernel accepted the module; it does not
# guarantee that the WLAN device initialized or that the firmware is correct.

LOG=/tmp/pipa-wlan-loader.log
MODDIR=/vendor/lib/modules
FWROOT=/vendor/firmware

echo "[PIPA-WLAN] Starting WLAN module load" > "$LOG"
mkdir -p "$FWROOT"

if [ -e "$MODDIR/qca_cld3_qca6390.ko" ]; then
    echo "[PIPA-WLAN] Trying QCA6390 module" >> "$LOG"
    if insmod "$MODDIR/qca_cld3_qca6390.ko" >> "$LOG" 2>&1; then
        echo "[PIPA-WLAN] QCA6390 module inserted" >> "$LOG"
        exit 0
    fi
fi

if [ -e "$MODDIR/qca_cld3_qca6490.ko" ]; then
    echo "[PIPA-WLAN] Trying QCA6490 module" >> "$LOG"
    if insmod "$MODDIR/qca_cld3_qca6490.ko" >> "$LOG" 2>&1; then
        echo "[PIPA-WLAN] QCA6490 module inserted" >> "$LOG"
        exit 0
    fi
fi

echo "[PIPA-WLAN] No candidate module could be inserted; see dmesg and this log" >> "$LOG"
exit 0
