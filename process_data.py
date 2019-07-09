import moveFiles
import json
from Condenser import Condenser
import couch_db
from os import listdir
from os.path import isfile, join
import shutil
import os
import traceback
import urllib.request

def removeFile(fullFilePath):
    os.remove(fullFilePath)

def saveToFile(data):
    with open("add_to_DB/finalChunk.txt", 'a', encoding="utf-8") as tf:
        tf.write(str(data).strip())
        tf.write("\n")

def req_reduce():
    contents = urllib.request.urlopen("http://example.com/foo/bar").read()

def process_history_data(filePath):
    fileNameList = [f for f in listdir(filePath) if isfile(join(filePath, f))]
    for fileName in fileNameList:
        try:
            fullFilePath = filePath+"/"+fileName
            with open(fullFilePath, 'r+', encoding="utf-8") as tweetFile:
                for lineNum, line in enumerate(tweetFile):
                    if lineNum > 0:
                        if "coordinates" in str(line):
                            if str(line[-2]) == ',':
                                line = line[:-2]
                            elif str(line[-3:-1]) == "]}":
                                break
                            hist_condenser = Condenser(json.loads(line))
                            if hist_condenser.text == '' or hist_condenser.geo[0] == -1 or hist_condenser.geo[1] == -1:
                                continue
                            saveToFile(hist_condenser.getJson())
                            # couch_db.pushToDB(db, hist_condenser.getJson())            
            removeFile(fullFilePath)
        except Exception as e:
            print("Error in process_history_data data")
            tb = traceback.format_exc()
            print(e.__doc__)



def process_search_data(filePath):
    fileNameList = [f for f in listdir(filePath) if isfile(join(filePath, f))]
    for fileName in fileNameList:
        try:
            fullFilePath = filePath+"/"+fileName
            with open(fullFilePath, 'r+', encoding="utf-8") as tweetFile:
                tweets_array = json.load(tweetFile)
                for data_item in tweets_array:
                    search_condenser = Condenser(data_item)
                    if search_condenser.text == '' or search_condenser.geo[0] == -1 or search_condenser.geo[1] == -1:
                        continue
                    saveToFile(search_condenser.getJson())
                    # couch_db.pushToDB(db, search_condenser.getJson())
            removeFile(fullFilePath)
        except Exception as e:
            print("Error in process_search_data data")
            tb = traceback.format_exc()
            print(e.__doc__)
            

def process_stream_data(filePath):
    fileNameList = [f for f in listdir(filePath) if isfile(join(filePath, f))]
    for fileName in fileNameList:
        try:
            fullFilePath = filePath+"/"+fileName
            with open(fullFilePath, 'r+', encoding="utf-8") as tweetFile:
                for lineNum, line in enumerate(tweetFile):
                    stream_condenser = Condenser(json.loads(line))
                    if stream_condenser.text == '' or stream_condenser.geo[0] == -1 or stream_condenser.geo[1] == -1:
                        continue
                    saveToFile(stream_condenser.getJson())
                    # couch_db.pushToDB(db, stream_condenser.getJson())
            removeFile(fullFilePath)
        except Exception as e:
            print("Error in process_stream_data data")
            tb = traceback.format_exc()
            print(e.__doc__)

def process_tweet_data(process_search_tweets, process_historic_data, finalPath, couch_db_ip_address):
    filePath_preProcess = finalPath
    filePath_historiData = "historicData"
    filePath_searchData = "searchData"
    filePath_streamData = "liveStream"

    #db = couch_db.initConnection(couch_db_ip_address, "ccc_a2_tweets")

    try:
        if process_historic_data:
            # move historic tweet data fetched from Nectar to directory for pre processing
            moveFiles.move_files(filePath_historiData, filePath_preProcess)
            process_history_data(filePath_preProcess)

        if process_search_tweets:
            # move search API tweet data from developer.twitter.com to temporary directory for normalizing json data format
            moveFiles.move_files(filePath_searchData, filePath_preProcess)
            process_search_data(filePath_preProcess)

        # move stream API tweet data from developer.twitter.com to temporary directory for normalizing json data format
        moveFiles.move_files(filePath_streamData, filePath_preProcess)
        process_stream_data(filePath_preProcess)
        couch_db.add_File_to_DB("add_to_DB/finalChunk.txt", couch_db_ip_address, "ccc_a2_tweets")
        removeFile("add_to_DB/finalChunk.txt")

    except Exception as e:
        print("Error in process_tweet_data data")
        tb = traceback.format_exc()
        print(e.__doc__)
