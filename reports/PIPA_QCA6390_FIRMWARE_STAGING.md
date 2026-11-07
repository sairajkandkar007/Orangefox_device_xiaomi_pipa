# Pipa QCA6390 recovery firmware staging

- Source: official Pipa fastboot ROM `OS2.0.14.0.UMZINXM`.
- Recovery destination: `recovery/root/vendor/firmware/wlan/qca_cld/qca6390/`.
- Includes the stock `amss20.bin`, `m3.bin`, `bdwlan.elf`, regulatory database, QCA6390 configuration, and all extracted `bd_*.elf` / `bdwlan.e*` board-data candidates.
- Board-data variants are preserved without selecting or renaming one. Select the active variant only after confirming the runtime board ID.
- `wlan_mac.bin` was not present in the extracted QCA6390 modem payload and is not fabricated.
- The QCA6390 kernel module and vendor WLAN configuration already exist in the recovery tree. Module loading still requires matching the recovery kernel ABI.
- This is file staging only; it does not prove firmware boot, driver initialization, scanning, or connectivity.

## Staged payload

WCNSS_qcom_cfg.ini (11665 bytes)
amss20.bin (4352144 bytes)
bd_j11.elf (57868 bytes)
bd_j11_b.elf (57868 bytes)
bd_j11gl.elf (57868 bytes)
bd_j11in.elf (57868 bytes)
bd_j1_b.elf (57852 bytes)
bd_j1gl.elf (57856 bytes)
bd_j1in.elf (57856 bytes)
bd_j1s.elf (57884 bytes)
bd_j2s.elf (57908 bytes)
bd_j3s.elf (58040 bytes)
bd_j3sgl.elf (57968 bytes)
bd_j3sin.elf (57984 bytes)
bd_k11a.elf (57896 bytes)
bd_k11agl.elf (57936 bytes)
bd_k11ain.elf (57932 bytes)
bd_k81.elf (57908 bytes)
bd_k81a.elf (57908 bytes)
bd_l3a.elf (57844 bytes)
bd_l3agl.elf (57844 bytes)
bd_l81a.elf (57868 bytes)
bd_m82.elf (57928 bytes)
bd_m82gl.elf (57932 bytes)
bd_m82in.elf (57928 bytes)
bdwlan.e01 (57868 bytes)
bdwlan.e02 (57868 bytes)
bdwlan.e03 (57868 bytes)
bdwlan.e04 (57868 bytes)
bdwlan.e05 (57868 bytes)
bdwlan.e06 (57868 bytes)
bdwlan.e07 (57868 bytes)
bdwlan.e08 (57868 bytes)
bdwlan.e09 (57868 bytes)
bdwlan.e0a (57868 bytes)
bdwlan.e0b (57868 bytes)
bdwlan.e0c (57868 bytes)
bdwlan.e0d (57868 bytes)
bdwlan.e0e (57868 bytes)
bdwlan.e0f (57868 bytes)
bdwlan.e10 (57868 bytes)
bdwlan.e11 (57868 bytes)
bdwlan.e12 (57868 bytes)
bdwlan.e13 (57868 bytes)
bdwlan.e14 (57868 bytes)
bdwlan.e15 (57868 bytes)
bdwlan.e16 (57868 bytes)
bdwlan.e17 (57868 bytes)
bdwlan.e18 (57868 bytes)
bdwlan.e25 (57868 bytes)
bdwlan.elf (57868 bytes)
m3.bin (266684 bytes)
regdb.bin (19348 bytes)
regdb_j11.bin (19348 bytes)

Board-data candidates: 49
wlan_mac.bin: unavailable in extracted source
