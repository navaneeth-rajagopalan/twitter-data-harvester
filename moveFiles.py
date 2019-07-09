from os import listdir
from os.path import isfile, join
import shutil
import os

def move_files(srcFilesPath, destFilesPath):
	try:
		fileNameList = [f for f in listdir(srcFilesPath) if isfile(join(srcFilesPath, f))]
		if not os.path.exists(destFilesPath):
				os.makedirs(destFilesPath)
		for fileName in fileNameList:
			shutil.move(srcFilesPath+"/"+fileName, destFilesPath+"/"+fileName)
	except Exception as e:
		print("Error while moving files")
		print(e.__doc__)