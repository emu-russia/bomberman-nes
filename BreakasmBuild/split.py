'''
	This script is used to split a large PRG into banks.
'''

import os
import sys

BANK_SIZE = 16384

def split_prg(filename):
	i = 0
	with open(filename, 'rb') as infile:
		while True:
			chunk = infile.read(BANK_SIZE)
			if not chunk: break
			chunk_file = open(f"{os.path.splitext(filename)[0]}{i:03d}.prg", 'wb+')
			chunk_file.write(chunk)
			chunk_file.close()
			i = i + 1

def PrintHelp():
	print ("split file.prg")

if __name__ == '__main__':
	if len( sys.argv ) <= 1:
		PrintHelp ()
	else:
		split_prg (sys.argv[1])
