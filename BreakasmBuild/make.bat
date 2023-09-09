DEL BOMBER.NES
del *.prg
breakasm BMAN.NAS BOMBER.PRG > out.txt
python split.py BOMBER.PRG
COPY /B NES_Header.bin + BOMBER003.PRG + BOMBER.CHR /B BOMBER.NES
