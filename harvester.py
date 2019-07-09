import sys
import os
import datetime
import threading
import historic_tweets_harvester
from twitter_credentials import gridDetails
import twitter_stream
import data_process_scheduler

parallelProcessList = []

twitter_keys_count = len(gridDetails)
instance_id = int(sys.argv[1]) # To start from 0
total_instances = int(sys.argv[2])
keys_per_instance = int(twitter_keys_count / total_instances)
couch_db_ip_address = sys.argv[3]
process_historic_data = False

# Prepare Historic tweets Harvester if last instance
if instance_id == (total_instances - 1):
    process_historic_data = True
    parallelProcessList.append(threading.Thread(target=historic_tweets_harvester.fetch_historic_tweets))

# Prepare Live Stream Processes
newpath = './liveStream' 
if not os.path.exists(newpath):
    os.makedirs(newpath)
newpath = './add_to_DB' 
if not os.path.exists(newpath):
    os.makedirs(newpath)
    
for index in range(twitter_keys_count):
    if index % total_instances == instance_id:
        fetched_tweets_filename = "livetweets-grid-" + str(index) + ".txt"
        twitter_credentials = {
            "ACCESS_TOKEN": gridDetails[index]["ACCESS_TOKEN"],
            "ACCESS_TOKEN_SECRET": gridDetails[index]["ACCESS_TOKEN_SECRET"],
            "CONSUMER_KEY": gridDetails[index]["CONSUMER_KEY"],
            "CONSUMER_SECRET": gridDetails[index]["CONSUMER_SECRET"]
        }
        print("Creating thread for index " + str(index))
        parallelProcessList.append(threading.Thread(target=twitter_stream.start_stream, args=(fetched_tweets_filename, twitter_credentials, gridDetails[index]["GRID"])))

# Prepare scheduler
parallelProcessList.append(threading.Thread(target=data_process_scheduler.start_scheduler, args=(total_instances, instance_id, process_historic_data, "dataForPreProcessing", couch_db_ip_address)))

for process in parallelProcessList:
    process.start()