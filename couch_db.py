import couchdb
import traceback
import os
from os import listdir
from os.path import isfile, join
import json
import pandas as pd
from pandas.io.json import json_normalize

def initConnection(couch_db_ip_address, data_base_name):
    secure_remote_server = couchdb.Server('http://admin:admin@' + couch_db_ip_address + ':5984')
    print("Connected")
    if data_base_name in secure_remote_server:
        print("Data Base already exists")
        db = secure_remote_server[data_base_name]
    else:
        print("Data Base does not exist. Creating it")
        db = secure_remote_server.create(data_base_name)
        print("Connected to DB")
    return db

def add_File_to_DB(filePath, couch_db_ip_address, data_base_name):
    secure_remote_server = couchdb.Server('http://admin:admin@' + couch_db_ip_address + ':5984')
    print("Connected")
    if data_base_name in secure_remote_server:
        print("Data Base already exists")
        db = secure_remote_server[data_base_name]
    else:
        print("Data Base does not exist. Creating it")
        db = secure_remote_server.create(data_base_name)
        print("Connected to DB")
    with open(filePath, 'r+', encoding="utf-8") as tweetFile:
        for lineNum, line in enumerate(tweetFile):
            try:
                data = line.replace('\'', '"')            
                fdata = json.loads((data))
                if fdata["_id"] in db:
                    print("Doc exists Skipping")
                else:
                    db.save(fdata)
            except Exception as e:
                print("Error while updating DB data")
                tb = traceback.format_exc()
                print(e.__doc__)
            else:
                tb = ""
            finally:
                if tb != "":
                    print(tb)

def pushToDB(db, condensedData):
    try:
        if condensedData["_id"] in db:
            print("Doc exists Skipping")
        else:
            print(condensedData)
            df = pd.DataFrame(json_normalize(condensedData))
            db.save(df.to_json())
    except Exception as e:
        print("Error while updating DB data")
        print(e.__doc__)
    

# pushToDB('172.26.38.63', [])