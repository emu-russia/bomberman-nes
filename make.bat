DEL BOMBER.NES
del *.prg
python breakasm.py BMAN.NAS BOMBER.PRG > out.txt
python split.py BOMBER.PRG
COPY /B NES_Header.bin + BOMBER003.PRG + BOMBER.CHR /B BOMBER.NES
python crc32.py BOMBER003.PRG
python crc32.py BOMBER.CHR