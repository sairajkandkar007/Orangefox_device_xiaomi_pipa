# Pipa WLAN stock-ROM file inventory

- Source: official Xiaomi Pipa fastboot ROM extracted by this workflow.
- This report records paths, sizes and SHA-256. A separate staging step copies allowlisted WLAN assets from extracted vendor/system/odm partitions into the recovery tree.
- A missing entry means the exact filename was not found in the extracted filesystem/ramdisk/modem roots scanned below.
- Modem extraction is read-only. The workflow only examines modem.img/modem_a.img/modem_b.img/NON-HLOS images; it never processes modemst*, fsg, persist or NV/EFS partitions.
- If the modem image is a proprietary raw container rather than EROFS/ext, binwalk signature extraction is attempted in the isolated runner; absence from the inventory is not proof that the firmware is absent from the device's mounted modem filesystem.

## Scanned extraction roots


## Modem partition extraction details

```text
===== NON-HLOS.bin =====
analysis/modem/images/NON-HLOS.bin: DOS/MBR boot sector, code offset 0x3c+2, OEM-ID "MSDOS5.0", Bytes/sector 4096, sectors/cluster 4, root entries 512, Media descriptor 0xf8, sectors/FAT 15, sectors/track 63, heads 255, sectors 114688 (volumes > 32 MB), serial number 0xbc614e, unlabeled, FAT (16 bit)
6349e11dc155809eadff5780c7f38d50b7428be99f09f921335fcdf80d2a7845  analysis/modem/images/NON-HLOS.bin
No top-level EROFS/ext filesystem detected; running signature scan only.

                                        /home/runner/work/orangefox_device_xiaomi_pipa/orangefox_device_xiaomi_pipa/analysis/modem/binwalk/NON-HLOS/NON-HLOS.bin
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DECIMAL                            HEXADECIMAL                        DESCRIPTION
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
3299037                            0x3256DD                           PEM certificate
3446006                            0x3494F6                           PEM certificate
3501356                            0x356D2C                           PEM certificate
3625396                            0x3751B4                           PEM certificate
3690932                            0x3851B4                           PEM certificate
3779957                            0x39AD75                           PEM certificate
3829036                            0x3A6D2C                           PEM certificate
4420537                            0x4373B9                           PEM certificate
4501531                            0x44B01B                           PEM certificate
4781407                            0x48F55F                           PEM certificate
22519925                           0x157A075                          PEM certificate
22522177                           0x157A941                          PEM certificate
35524272                           0x21E0EB0                          SHA256 hash constants, little endian
35694800                           0x220A8D0                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
45190336                           0x2B18CC0                          SHA256 hash constants, little endian
48290271                           0x2E0D9DF                          Copyright text: "Copyright 2002-2007 Open Interface North America, Inc. All rights reserved"
49516664                           0x2F39078                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
49699456                           0x2F65A80                          Copyright text: "Copyright (c) 1992-2004 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
53102144                           0x32A4640                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
53284936                           0x32D1048                          Copyright text: "Copyright (c) 1992-2004 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
53342208                           0x32DF000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
53489664                           0x3303000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
53506048                           0x3307000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
54243328                           0x33BB000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
54259712                           0x33BF000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
55128064                           0x3493000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
55144448                           0x3497000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
55619584                           0x350B000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
55635968                           0x350F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
56160256                           0x358F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
56176640                           0x3593000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
56340480                           0x35BB000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
58341008                           0x37A3690                          SHA256 hash constants, little endian
58494816                           0x37C8F60                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
62178568                           0x3B4C508                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
62264544                           0x3B614E0                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
62287872                           0x3B67000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
62675868                           0x3BC5B9C                          SHA256 hash constants, little endian
62676888                           0x3BC5F98                          AES S-Box
62677144                           0x3BC6098                          AES S-Box
62763008                           0x3BDB000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
62795776                           0x3BE3000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
63283072                           0x3C59F80                          SHA256 hash constants, little endian
63284560                           0x3C5A550                          AES S-Box
63284816                           0x3C5A650                          AES S-Box
63385600                           0x3C73000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
63418368                           0x3C7B000                          ELF binary, 32-bit executable, Tensilica Xtensa for System-V (Unix), little endian
64073728                           0x3D1B000                          ELF binary, 32-bit executable, Tensilica Xtensa for System-V (Unix), little endian
64090112                           0x3D1F000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
64270336                           0x3D4B000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
64286720                           0x3D4F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
64434176                           0x3D73000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
64450560                           0x3D77000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
64630784                           0x3DA3000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
64663552                           0x3DAB000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
70320770                           0x4310282                          Copyright text: "Copyright (C) 1991-2020 The libjpeg-turbo Project and many others"
75558912                           0x480F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
75575296                           0x4813000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
76227948                           0x48B256C                          CRC32 polynomial table, little endian
78213120                           0x4A97000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
78229504                           0x4A9B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
78862584                           0x4B358F8                          CRC32 polynomial table, little endian
80834560                           0x4D17000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
80850944                           0x4D1B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
81503416                           0x4DBA4B8                          CRC32 polynomial table, little endian
83488768                           0x4F9F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
83505152                           0x4FA3000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
83954508                           0x5010B4C                          CRC32 polynomial table, little endian
83974284                           0x501588C                          CRC32 polynomial table, little endian
85815296                           0x51D7000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
85831680                           0x51DB000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
90058192                           0x55E2DD0                          SHA256 hash constants, little endian
90308012                           0x561FDAC                          CRC32 polynomial table, little endian
91383592                           0x5726728                          CRC32 polynomial table, little endian
91629832                           0x5762908                          AES S-Box
91630600                           0x5762C08                          AES S-Box
91632724                           0x5763454                          AES S-Box
91633236                           0x5763654                          AES S-Box
91633912                           0x57638F8                          CRC32 polynomial table, little endian
91701092                           0x5773F64                          AES S-Box
95055872                           0x5AA7000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
95072256                           0x5AAB000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
98021712                           0x5D7B150                          SHA256 hash constants, little endian
98026520                           0x5D7C418                          CRC32 polynomial table, little endian
99400144                           0x5ECB9D0                          CRC32 polynomial table, little endian
99867876                           0x5F3DCE4                          AES S-Box
99868644                           0x5F3DFE4                          AES S-Box
100242628                          0x5F994C4                          AES S-Box
103985152                          0x632B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
104001536                          0x632F000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
105193272                          0x6451F38                          CRC32 polynomial table, little endian
109080576                          0x6807000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
109096960                          0x680B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
112058880                          0x6ADE200                          SHA256 hash constants, little endian
112105852                          0x6AE997C                          CRC32 polynomial table, little endian
113481328                          0x6C39670                          CRC32 polynomial table, little endian
113949792                          0x6CABC60                          AES S-Box
113950560                          0x6CABF60                          AES S-Box
114319388                          0x6D0601C                          AES S-Box
118091776                          0x709F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
118108160                          0x70A3000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
122081264                          0x746CFF0                          SHA256 hash constants, little endian
122229072                          0x7491150                          CRC32 polynomial table, little endian
122286416                          0x749F150                          CRC32 polynomial table, little endian
122439188                          0x74C4614                          CRC32 polynomial table, little endian
123741528                          0x7602558                          CRC32 polynomial table, little endian
123745904                          0x7603670                          AES S-Box
123746672                          0x7603970                          AES S-Box
123809104                          0x7612D50                          AES S-Box
123809616                          0x7612F50                          AES S-Box
123830264                          0x7617FF8                          AES S-Box
128053248                          0x7A1F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
128069632                          0x7A23000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
131019088                          0x7CF3150                          SHA256 hash constants, little endian
131023896                          0x7CF4418                          CRC32 polynomial table, little endian
132397520                          0x7E439D0                          CRC32 polynomial table, little endian
132865252                          0x7EB5CE4                          AES S-Box
132866020                          0x7EB5FE4                          AES S-Box
133240004                          0x7F114C4                          AES S-Box
136982528                          0x82A3000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
136998912                          0x82A7000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
139965584                          0x857B490                          SHA256 hash constants, little endian
139970392                          0x857C758                          CRC32 polynomial table, little endian
141344016                          0x86CBD10                          CRC32 polynomial table, little endian
141811796                          0x873E054                          AES S-Box
141812564                          0x873E354                          AES S-Box
142185908                          0x87995B4                          AES S-Box
145928192                          0x8B2B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
145944576                          0x8B2F000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
146206728                          0x8B6F008                          JPEG image, total size: 7951 bytes
146321408                          0x8B8B000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
146337792                          0x8B8F000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
146518016                          0x8BBB000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
146534400                          0x8BBF000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
146812928                          0x8C03000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
146845696                          0x8C0B000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
146993152                          0x8C2F000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
147009536                          0x8C33000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
147222528                          0x8C67000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
147238912                          0x8C6B000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
147386368                          0x8C8F000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
147402752                          0x8C93000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
147746816                          0x8CE7000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
147763200                          0x8CEB000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
151924736                          0x90E3000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
151941120                          0x90E7000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
152137728                          0x9117000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
152154112                          0x911B000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
152361424                          0x914D9D0                          SHA256 hash constants, little endian
152530944                          0x9177000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
152547328                          0x917B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
152687535                          0x919D3AF                          AES S-Box
152687791                          0x919D4AF                          AES S-Box
152711608                          0x91A31B8                          SHA256 hash constants, little endian
152776704                          0x91B3000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
152793088                          0x91B7000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
152973312                          0x91E3000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
152989696                          0x91E7000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
153153536                          0x920F000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
154333304                          0x932F078                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
154923008                          0x93BF000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
155207872                          0x94048C0                          PEM public key
155237388                          0x940BC0C                          PEM certificate
155238700                          0x940C12C                          PEM certificate
155241712                          0x940CCF0                          PEM private key
155243424                          0x940D3A0                          PEM certificate
155244640                          0x940D860                          PEM private key
155246352                          0x940DF10                          PEM certificate
155247658                          0x940E42A                          PEM certificate
155248972                          0x940E94C                          PEM certificate
155250279                          0x940EE67                          PEM certificate
155255872                          0x9410440                          SHA256 hash constants, little endian
155258132                          0x9410D14                          PEM certificate
155259620                          0x94112E4                          PEM certificate
155261112                          0x94118B8                          PEM certificate
155398144                          0x9433000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
155414528                          0x9437000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
155561984                          0x945B000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
155578368                          0x945F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
155774976                          0x948F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
157582624                          0x9648520                          SHA256 hash constants, little endian
158227080                          0x96E5A88                          CRC32 polynomial table, little endian
158231176                          0x96E6A88                          CRC32 polynomial table, big endian
158356808                          0x9705548                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
160685520                          0x993DDD0                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
161941792                          0x9A70920                          SHA256 hash constants, little endian
162357095                          0x9AD5F67                          Copyright text: "Copyright 1995-2012 Mark Adler "
162357544                          0x9AD6128                          CRC32 polynomial table, little endian
162361640                          0x9AD7128                          CRC32 polynomial table, big endian
162639256                          0x9B1AD98                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
163328000                          0x9BC3000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
165228544                          0x9D93000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
165244928                          0x9D97000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
167243776                          0x9F7F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
167260160                          0x9F83000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
167440384                          0x9FAF000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
167456768                          0x9FB3000                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
167489536                          0x9FBB000                          ELF binary, 32-bit executable, ARM for Linux, little endian
167882752                          0xA01B000                          ELF binary, 32-bit executable, ARM for Linux, little endian
168013824                          0xA03B000                          ELF binary, 32-bit executable, ARM for Linux, little endian
168210432                          0xA06B000                          ELF binary, 32-bit executable, ARM for Linux, little endian
168472576                          0xA0AB000                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
168488960                          0xA0AF000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
168636416                          0xA0D3000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
168652800                          0xA0D7000                          ELF binary, 32-bit executable, Tensilica Xtensa for System-V (Unix), little endian
169766912                          0xA1E7000                          ELF binary, 32-bit executable, Tensilica Xtensa for System-V (Unix), little endian
169783296                          0xA1EB000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
170078208                          0xA233000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
170094592                          0xA237000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
170154489                          0xA2459F9                          AES S-Box
170242048                          0xA25B000                          ELF binary, 32-bit shared object, ARM for System-V (Unix), little endian
170258432                          0xA25F000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
170405888                          0xA283000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
170422272                          0xA287000                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
170487808                          0xA297000                          ELF binary, 32-bit executable, ARM for Linux, little endian
170799104                          0xA2E3000                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
172660138                          0xA4A95AA                          Copyright text: "Copyright (c) 1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2"
173453312                          0xA56B000                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
173897628                          0xA5D779C                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
174010368                          0xA5F3000                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
181434856                          0xAD079E8                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
190848536                          0xB601E18                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
204500648                          0xC306EA8                          SHA256 hash constants, little endian
205410144                          0xC3E4F60                          AES S-Box
205731712                          0xC433780                          CRC32 polynomial table, little endian
209078264                          0xC7647F8                          AES S-Box
209078776                          0xC7649F8                          AES S-Box
209087440                          0xC766BD0                          CRC32 polynomial table, little endian
209091536                          0xC767BD0                          CRC32 polynomial table, big endian
213499280                          0xCB9BD90                          CRC32 polynomial table, little endian
213503376                          0xCB9CD90                          CRC32 polynomial table, big endian
214803528                          0xCCDA448                          AES S-Box
260845568                          0xF8C3000                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
260960256                          0xF8DF000                          ELF binary, 32-bit executable, ARM for Linux, little endian
261524732                          0xF968CFC                          SHA256 hash constants, little endian
261525640                          0xF969088                          AES S-Box
261525896                          0xF969188                          AES S-Box
261959680                          0xF9D3000                          ELF binary, 32-bit executable, ARM for Linux, little endian
261992448                          0xF9DB000                          ELF binary, 32-bit executable, ARM for Linux, little endian
262041600                          0xF9E7000                          ELF binary, 32-bit executable, ARM for Linux, little endian
262139904                          0xF9FF000                          ELF binary, 32-bit executable, ARM for Linux, little endian
262189056                          0xFA0B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
262385664                          0xFA3B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
262713344                          0xFA8B000                          ELF binary, 64-bit shared object, ARM 64-bit for System-V (Unix), little endian
263565312                          0xFB5B000                          ELF binary, 32-bit executable, ARM for System-V (Unix), little endian
266516544                          0xFE2B840                          CRC32 polynomial table, little endian
266551712                          0xFE341A0                          SHA256 hash constants, little endian
267865304                          0xFF74CD8                          Copyright text: "Copyright (c) 1992-2006 by P.J. Plauger, licensed by Dinkumware, Ltd. ALL RIGHTS RESERVED."
271200256                          0x102A3000                         ELF binary, 32-bit executable, x86 for System-V (Unix), little endian
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[+] Extraction of pem_certificate data at offset 0x3256DD completed successfully
[+] Extraction of pem_certificate data at offset 0x3494F6 completed successfully
[+] Extraction of pem_certificate data at offset 0x356D2C completed successfully
[+] Extraction of pem_certificate data at offset 0x3751B4 completed successfully
[+] Extraction of pem_certificate data at offset 0x3851B4 completed successfully
[+] Extraction of pem_certificate data at offset 0x39AD75 completed successfully
[+] Extraction of pem_certificate data at offset 0x3A6D2C completed successfully
[+] Extraction of pem_certificate data at offset 0x4373B9 completed successfully
[+] Extraction of pem_certificate data at offset 0x44B01B completed successfully
[+] Extraction of pem_certificate data at offset 0x48F55F completed successfully
[+] Extraction of pem_certificate data at offset 0x157A075 completed successfully
[+] Extraction of pem_certificate data at offset 0x157A941 completed successfully
[+] Extraction of jpeg data at offset 0x8B6F008 completed successfully
[+] Extraction of pem_public_key data at offset 0x94048C0 completed successfully
[+] Extraction of pem_certificate data at offset 0x940BC0C completed successfully
[+] Extraction of pem_certificate data at offset 0x940C12C completed successfully
[+] Extraction of pem_private_key data at offset 0x940CCF0 completed successfully
[+] Extraction of pem_certificate data at offset 0x940D3A0 completed successfully
[+] Extraction of pem_private_key data at offset 0x940D860 completed successfully
[+] Extraction of pem_certificate data at offset 0x940DF10 completed successfully
[+] Extraction of pem_certificate data at offset 0x940E42A completed successfully
[+] Extraction of pem_certificate data at offset 0x940E94C completed successfully
[+] Extraction of pem_certificate data at offset 0x940EE67 completed successfully
[+] Extraction of pem_certificate data at offset 0x9410D14 completed successfully
[+] Extraction of pem_certificate data at offset 0x94112E4 completed successfully
[+] Extraction of pem_certificate data at offset 0x94118B8 completed successfully
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Analyzed 1 file for 85 file signatures (187 magic patterns) in 1.9 seconds
```

### Modem image and extraction files

```text
analysis/modem/images/NON-HLOS.bin	271495168 bytes
analysis/modem/modem-extraction.log	34709 bytes
analysis/modem/modem-file-list.txt	0 bytes
analysis/modem/modem-image-candidates.txt	0 bytes
```

- `analysis/partitions`
- `analysis/standalone`
- `analysis/vendor`
- `analysis/odm`
- `analysis/system`
- `analysis/system_ext`
- `analysis/product`
- `analysis/vendor_dlkm`
- `analysis/system_dlkm`
- `analysis/odm_dlkm`
- `analysis/boot/unpacked`
- `analysis/vendor_boot/unpacked`
- `analysis/modem/extracted`
- `analysis/modem/binwalk`

## Requested files

| Filename | Status | Stock-ROM path | Size | SHA-256 |
|---|---|---|---:|---|
| `amss20.bin` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/amss20.bin` | 4352144 | `dd8d8355b368af77fefd25f7b8d5b66476a042427f98365242973f438577262e` |
| `android.hardware.wifi.supplicant@1.0.so` | **NOT FOUND** | — | — | — |
| `android.hardware.wifi.supplicant@1.1.so` | **NOT FOUND** | — | — | — |
| `android.hardware.wifi.supplicant@1.2.so` | **NOT FOUND** | — | — | — |
| `android.hardware.wifi.supplicant@1.3.so` | **NOT FOUND** | — | — | — |
| `bd_j11.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j11.elf` | 57868 | `a361f4bdca25254cea5a06167b90401f5dadef2e1ce424b3bccbaa0d97255fa3` |
| `bd_j11_b.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j11_b.elf` | 57868 | `6a941adc038e743cfc37fd35cbba738107f14a431b1569dd8380c4e35c1e5b49` |
| `bd_j11gl.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j11gl.elf` | 57868 | `7705cc66ff165dd8ce3116263426c8e7b689df2cda24e91c8dfe8e3461cff554` |
| `bd_j11in.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j11in.elf` | 57868 | `2be13bd4f9e8e9c3f06e5aa185c2e70ca39e0e826ddade40ba00ec44df0de443` |
| `bd_j1_b.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j1_b.elf` | 57852 | `0dd172cc73a460ec7fe70cc62d66da5ccccd74dbbafc44d6bb41a3a09ef4b942` |
| `bd_j1gl.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j1gl.elf` | 57856 | `9afe987b04a3fc8bef44c1211c6c27b38ac052e9234ad9aff5f36beca070bb1b` |
| `bd_j1in.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j1in.elf` | 57856 | `1426c2d3725f286d3d873467b34f02b304b16da00cb37e929c05dd60bf1dea67` |
| `bd_j1s.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j1s.elf` | 57884 | `18ff7b7f918117d875512096f9eff4de3d00d41ddb01591640a1c46076e13717` |
| `bd_j2s.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j2s.elf` | 57908 | `75c1589a9eef4c217c3c4e6c33c3dfefd868c6a28bdd126defd3abdb8042e26f` |
| `bd_j3s.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j3s.elf` | 58040 | `a0a6d6cfcd86fc0605a644460990b595bb6adbab32bb4cf891bd18384ae9a2d5` |
| `bd_j3sgl.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j3sgl.elf` | 57968 | `83407844ea080f66eb6dd323e2cb60f4670e7f41b18dbec17489935079359c2d` |
| `bd_j3sin.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_j3sin.elf` | 57984 | `9a768cca857978f74286cbe239c713723c40526bba17e29106884399c59bbd53` |
| `bd_k11a.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_k11a.elf` | 57896 | `ac9052fe43f80c5a35f7c6404f427704825a144e01e5a941dd8b8a4f4bc76e43` |
| `bd_k11agl.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_k11agl.elf` | 57936 | `7b4ae99123fe707f879f38287588dda47a63af7d170a62b9ea2fae0253a43eb5` |
| `bd_k11ain.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_k11ain.elf` | 57932 | `d86423272417b4ca6e2e3e37ece2f0293b28164c814129e1feb4f2dee01c986c` |
| `bd_k81.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_k81.elf` | 57908 | `d982af0adc4501d199956e627a5000e8ca638e1061f8c932c41860922f8ff6a9` |
| `bd_k81a.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_k81a.elf` | 57908 | `a5c99867d398b4e8773d106100e8575e1b3c29b8e18921dae50029b1253eac06` |
| `bd_l3a.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_l3a.elf` | 57844 | `3e565ac62dbab31307864d646229d1d24ee80172e394b77f1ea8493cc3a888f3` |
| `bd_l3agl.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_l3agl.elf` | 57844 | `8998548b7d4757e3be1f15f4f67f7551550bf780191952a8ebd46a244c656d6d` |
| `bd_l81a.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_l81a.elf` | 57868 | `fc3100d41d81cf7ffc0cfe8cf80e3a4db2666fa433c75ab51c15df30da69896f` |
| `bd_m82.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_m82.elf` | 57928 | `3a1defd42ea1db714c151eda2300cace84ecd91e6a4f2581ef2c0f5afc85f831` |
| `bd_m82gl.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_m82gl.elf` | 57932 | `38ac11c874a506c9f44b2d55df431a81fd965f9d61b69fff9a6ac2104277a742` |
| `bd_m82in.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bd_m82in.elf` | 57928 | `a5688eaa41cfe5fb2aba6f16146366ff9775a77e7554437096f618c4c02e6f0c` |
| `bdwlan.e01` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e01` | 57868 | `9238b0dd86185ed51eab9003fa060417ec6e124644fd5195b5e2c59e34620ba0` |
| `bdwlan.e02` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e02` | 57868 | `130bf96b11a60de9ba743046efea77fcabd28e3e7a4f8fb35b872fe25249aa51` |
| `bdwlan.e03` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e03` | 57868 | `6a73603c783f0eb86bbe743daf3d52e146c0690a7e4992268ef11eb3eede63b9` |
| `bdwlan.e04` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e04` | 57868 | `622c2ac1f4e44eec9bc8f8a31d32628964895cb24f002839d2da6116b691f302` |
| `bdwlan.e05` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e05` | 57868 | `c55f09a553c05e45037c4cb79f0393519c6b0f77bcb6b4005cb61a465e09e229` |
| `bdwlan.e06` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e06` | 57868 | `b00472e015c5860ba597bec1a51112288e7512216479be681aaaebe3836c26f5` |
| `bdwlan.e07` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e07` | 57868 | `07456dee09e268ad55335b8a34f7df199965a7938557e44e853435724844c2bf` |
| `bdwlan.e08` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e08` | 57868 | `2c816426e68d45bb636c3b8e61ca1ee80efe7638c0c0eda988e59a2f3038bfd3` |
| `bdwlan.e09` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e09` | 57868 | `76bcfba75a7bd50cb6886088861a533da93ca73b1ccae922f246bc9c391ba054` |
| `bdwlan.e0a` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e0a` | 57868 | `4c20a41471fcd134de12b8065bc31a6f7b7b7afb7789714ac6496bd58dc1303c` |
| `bdwlan.e0b` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e0b` | 57868 | `7d757889110dc0e73f75c9f291be6f9d13d646f7e163f9fab152b9fd2b63564d` |
| `bdwlan.e0c` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e0c` | 57868 | `1763ec7e64254d27e0531c1a01440b5a5ebfefd4972b0b41e03d8255d18e075b` |
| `bdwlan.e0d` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e0d` | 57868 | `a33fa183abd0dcc73ba66b6cfdb42e0af255da5fbda871b0b893a284292e5fd1` |
| `bdwlan.e0e` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e0e` | 57868 | `d709b6073b2c2c0bd30363212f44173890c6b859f4add5e4363ab424c2a55511` |
| `bdwlan.e0f` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e0f` | 57868 | `0925e7661ebbc0f7e77f62f0444a71dd1506ef3cc8aa5172a3c919d07330eddd` |
| `bdwlan.e10` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e10` | 57868 | `11fb760608e6fce00575b4bf74ebc5d4cd24f20b397ae013991311c3386e5a49` |
| `bdwlan.e11` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e11` | 57868 | `5bd12a6954921cc16ff3a2c489c61d89e2e175257b68d822d0e192f1c52d3c22` |
| `bdwlan.e12` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e12` | 57868 | `0a6692e0ef8c501be2d86dd46f0cf3649ce1084ac857e034a2da46660ea0400d` |
| `bdwlan.e13` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e13` | 57868 | `dd526e56c88d8e7c1a3e5dc07339135fb35e53d86fab892d22d6f56d955f4a33` |
| `bdwlan.e14` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e14` | 57868 | `818f95efd923ed0a7dd9f3af62d0b981eabec769df2b7e3b0e31920eace8203b` |
| `bdwlan.e15` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e15` | 57868 | `b16f6b18dd54b56e7aad9bdb3aff34106209bf3b79b38ffe176bdccdc2c70007` |
| `bdwlan.e16` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e16` | 57868 | `35b35a9f753342f35d7e09735a8d5e31744525c0a5f8bf26c6206e026d816567` |
| `bdwlan.e17` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e17` | 57868 | `274c67ba2239e0ce5579e6a39f75c8596f91ebc6a8125ccae49dd0b3823173e4` |
| `bdwlan.e18` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e18` | 57868 | `bf1d9a4772cfad280187d5872f95bdab14b6d47b3e0a6086ef090529487681a3` |
| `bdwlan.e25` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.e25` | 57868 | `4a4e34c016142bd4681f6b1ce2519429fd736225e1fac97d8ebe0750a9083e50` |
| `bdwlan.elf` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/bdwlan.elf` | 57868 | `a3ee9de2c77edd268c023eaae55a79177df5619ba2f0be252232919dae549f4f` |
| `cnss-daemon` | **FOUND** | `analysis/partitions/vendor/bin/cnss-daemon` | 99472 | `839640148eff9d36cc8de5b4e397f8aae1c58d667ec3c50261a9fcdd2c54d31b` |
| `cnss-daemon.rc` | **NOT FOUND** | — | — | — |
| `hostapd` | **FOUND** | `analysis/partitions/vendor/bin/hw/hostapd` | 1180392 | `121b0f3538e61ff6c19bcf6669c0cd3045e6d56c91d443bc8e7e02d7eac9e133` |
| `libdl_android.so` | **FOUND** | `analysis/partitions/system/system/lib/bootstrap/libdl_android.so` | 3044 | `5e0cec41cea3394991f427062a3b7ed9b49f3be3fbc0a4818dc51e6a89354459` |
| `libdl_android.so` | **FOUND** | `analysis/partitions/system/system/lib64/bootstrap/libdl_android.so` | 10024 | `38238a7e49cbe33d033f6e718ea7f0e688c8f671c8e4bc7c780f70a3592c424d` |
| `libwifi-hal.so` | **FOUND** | `analysis/partitions/vendor/lib64/libwifi-hal.so` | 460792 | `ccf6b72ed707f634cfa96d7f27c3fc4d88ee581259d33ae1defe7f7fe347ea21` |
| `m3.bin` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/m3.bin` | 266684 | `936a00c4eb759caa321af63946cb2541bafee19f9066ca1af5dbf94e164ba61b` |
| `qca_cld3_qca6390.ko` | **FOUND** | `analysis/partitions/vendor/lib/modules/qca_cld3_qca6390.ko` | 11363408 | `714fb8d91b395f1d0a24644d99a6325688e49d967c1d10e8e661f53a78d66186` |
| `qca_cld3_qca6490.ko` | **FOUND** | `analysis/partitions/vendor/lib/modules/qca_cld3_qca6490.ko` | 11558024 | `da32a837833718b33efa3ba781d7f843fb0ec4a079f806f4ed57e0c889e889b6` |
| `regdb.bin` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/regdb.bin` | 19348 | `296b4603d3fe6ac6f0661534e9795d8ade40ea6d43f8ab8e7eefe8ebdcab54f9` |
| `regdb_j11.bin` | **FOUND** | `analysis/modem/extracted/NON-HLOS/image/qca6390/regdb_j11.bin` | 19348 | `536859e4ebd5073ff32f56dd3dd06fae8177a564bd0492b079d7bc8b6fc5072f` |
| `rmt_storage` | **FOUND** | `analysis/partitions/vendor/bin/rmt_storage` | 38440 | `66b874d9be521747b78af90937bcb9bbda53c6f300410c318ca02fc08893d0ae` |
| `vendor.qti.rmt_storage.rc` | **FOUND** | `analysis/partitions/vendor/etc/init/vendor.qti.rmt_storage.rc` | 255 | `e43198fb1fbdac63e8439d1445d9068d5a2c168a7daeb8683c3168e1155d0169` |
| `wcnss_qcom_cfg.ini` | **FOUND** | `analysis/partitions/vendor/etc/wifi/qca6390/WCNSS_qcom_cfg.ini` | 11665 | `0fcf52557412137d549e59dfabbf3dc1cd56bdb9101b7321047ec9ac19f98459` |
| `wlan_mac.bin` | **NOT FOUND** | — | — | — |
| `wlan_setup.rc` | **NOT FOUND** | — | — | — |
| `wpa_supplicant` | **FOUND** | `analysis/partitions/vendor/bin/hw/wpa_supplicant` | 3344128 | `006ed7f0b9c82df4951bdd6c070fddda1754c389cf5ff11e409e17860b2b63d8` |
| `wpa_supplicant.conf` | **FOUND** | `analysis/partitions/vendor/etc/wifi/wpa_supplicant.conf` | 142 | `53c1bef3ce121556093f2aa67c003534996618e29e97cfd3d3b11aa80e9ec951` |
| `wpa_supplicant.rc` | **NOT FOUND** | — | — | — |
| `wpa_supplicant_overlay.conf` | **FOUND** | `analysis/partitions/vendor/etc/wifi/wpa_supplicant_overlay.conf` | 316 | `79c157080145c305fad51b7fff4e69796d452b871c4ca641fc86f7e5246fee82` |

## Additional board firmware files

| Filename | Stock-ROM path | Size | SHA-256 |
|---|---|---:|---|
| — | No additional bd_*.elf files found | — | — |

## Handling

The workflow stages allowlisted WLAN modules/assets from extracted vendor/system/odm partitions into recovery/root and commits them with the audit reports. It does not copy the complete ROM, modem image, NV/EFS partitions, or rmt_storage executable.
