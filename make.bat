DEL BOMBER.NES
DASM BMAN.NAS -f3 -oBOMBER.PRG -lBOMBER.LST
TRACER -o -C -N BOMBER.PRG
COPY OUTPUT.DIS BOMBER.DIS
DEL OUTPUT.DIS
COPY /B NES_Header.bin + BOMBER.PRG + BOMBER.CHR /B BOMBER.NES