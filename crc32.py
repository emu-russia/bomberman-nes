'''

Outputs the CRC32 of the specified file to check against nescartdb.

'''

import zlib
import os, sys

def crc32(fileName):
	with open(fileName, 'rb') as fh:
		hash = 0
		while True:
			s = fh.read(65536)
			if not s:
				break
			hash = zlib.crc32(s, hash)
		return "%08X" % (hash & 0xFFFFFFFF)

for eachFile in sys.argv[1:]:
    print(crc32(eachFile))
