import schedule
import time
import datetime
import process_data
import sentiment_analysis

def pre_process_data(process_search_tweets, process_historic_data, filePath_preProcess, couch_db_ip_address):
    try:
        print("Running tweets processor at Time - " + str(datetime.datetime.now().hour) + ":" + str(datetime.datetime.now().minute))
        process_data.process_tweet_data(process_search_tweets, process_historic_data, filePath_preProcess, couch_db_ip_address)
        # sentiment_analysis.process_files(filePath_preProcess, couch_db_ip_address)
    except Exception as e:
        print("Error. In scheduled job")
        print(e.__doc__)

def start_scheduler(total_instances, instance_id, process_historic_data, filePath_preProcess, couch_db_ip_address):
    print("Starting scheduler")
    process_search_tweets = False
    if total_instances == 1 or instance_id == 0: # Only one instance or this is the first instance
        process_search_tweets = True
    schedule.every(60).minutes.do(pre_process_data, process_search_tweets, process_historic_data, filePath_preProcess, couch_db_ip_address)
    while 1:
        schedule.run_pending()
        time.sleep(1)