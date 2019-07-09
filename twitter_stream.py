import sys
import os
import datetime
import threading
from tweepy.streaming import StreamListener
from tweepy import OAuthHandler
from tweepy import Stream
 
class TwitterStreamer():
    """ Class for streaming and processing live tweets. """
    def __init__(self):
        pass

    def stream_tweets(self, fetched_tweets_filename, twitter_credentials, bounds):
        # This handles Twitter authetification and the connection to Twitter Streaming API
        listener = StdOutListener(fetched_tweets_filename)
        auth = OAuthHandler(twitter_credentials["CONSUMER_KEY"], twitter_credentials["CONSUMER_SECRET"])
        auth.set_access_token(twitter_credentials["ACCESS_TOKEN"], twitter_credentials["ACCESS_TOKEN_SECRET"])
        stream = Stream(auth, listener)

        # This line filter Twitter Streams to capture data by the keywords: 
        stream.filter(locations=bounds)

class StdOutListener(StreamListener):
    """ This is a basic listener that just prints received tweets to stdout. """
    def __init__(self, fetched_tweets_filename):
        self.fetched_tweets_filename = fetched_tweets_filename

    def on_data(self, data):
        try:
            with open("liveStream/" + str(datetime.date.today()) + "-" + self.fetched_tweets_filename, 'a') as tf:
                tf.write(data.strip() + "\n")
            return True
        except BaseException as e:
            print("Error on_data %s" % str(e))
        return True
          

    def on_error(self, status):
        print(status)

def start_stream(file_name, credentials, gridDetails):
    while True:
        try:
            twitter_streamer = TwitterStreamer()
            twitter_streamer.stream_tweets(file_name, credentials, gridDetails)
        except Exception as e:
            print("Error. Restarting Stream.... Error: ")
            print(e.__doc__)
    