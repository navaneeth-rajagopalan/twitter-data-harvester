import json
import sentiment_analysis

class Condenser:
    def __init__(self, tweet):
        self._id = self.updateID(tweet)
        self.text = self.updateText(tweet)
        self.angry = self.updateIsAngry(self.text)
        self.geo = self.updateGeo(tweet)

    def getJson(self):
        return {
            "_id": self._id,
            "angry": self.angry,
            "Geo": self.geo
        }

        
    def getTweetCoordinate(self, tweet):
        """ Process the tweet dictionary to get the coordinates from any of the 3 coordinates properties that may be available """
        tweetOriginCoordinates = []
        # Check the Doc section - Coordinates - doc.coordinates.coordinates
        if ("doc" in tweet) and (type(tweet["doc"]) == dict):
            # doc exists in the tweet data and is of type dictionary. Can be iterated          
            if ("coordinates" in tweet["doc"] and (type(tweet["doc"]["coordinates"]) == dict)):
                # coordinates exists in tweets.doc and is of type dictionary. Can be iterated
                if ("coordinates" in tweet["doc"]["coordinates"] and (type(tweet["doc"]["coordinates"]["coordinates"]) == list)):
                    # Coordinates exist in tweet.doc.coordinates.coordinates and is of type list. Geo coordinates can be obtained from here
                    tweetOriginCoordinates = tweet["doc"]["coordinates"]["coordinates"]
                    if len(tweetOriginCoordinates) == 2:
                        xPos = tweetOriginCoordinates[0]
                        yPos = tweetOriginCoordinates[1]
                        return [xPos, yPos]
        else:
            if ("coordinates" in tweet and (type(tweet["coordinates"]) == dict)):
                # coordinates exists in tweets.doc and is of type dictionary. Can be iterated
                if ("coordinates" in tweet["coordinates"] and (type(tweet["coordinates"]["coordinates"]) == list)):
                    # Coordinates exist in tweet.doc.coordinates.coordinates and is of type list. Geo coordinates can be obtained from here
                    tweetOriginCoordinates = tweet["coordinates"]["coordinates"]
                    if len(tweetOriginCoordinates) == 2:
                        xPos = tweetOriginCoordinates[0]
                        yPos = tweetOriginCoordinates[1]
                        return [xPos, yPos]
        
        # Check the Doc section - Geo - Coordinates - doc.geo.coordinates
        if ("doc" in tweet) and (type(tweet["doc"]) == dict):
            # doc exists in the tweet data and is of type dictionary. Can be iterated
            if ("geo" in tweet["doc"] and (type(tweet["doc"]["geo"]) == dict)):
                # geo exists in tweets.doc and is of type dictionary. Can be iterated
                if ("coordinates" in tweet["doc"]["geo"] and (type(tweet["doc"]["geo"]["coordinates"]) == list)):
                    # Coordinates exist in tweet.doc.coordinates.coordinates and is of type list. Geo coordinates can be obtained from here
                    tweetOriginCoordinates = tweet["doc"]["geo"]["coordinates"]
                    if len(tweetOriginCoordinates) == 2:
                        xPos = tweetOriginCoordinates[1]
                        yPos = tweetOriginCoordinates[0]
                        return [xPos, yPos]
        else:
            if ("geo" in tweet and (type(tweet["geo"]) == dict)):
                # geo exists in tweets.doc and is of type dictionary. Can be iterated
                if ("coordinates" in tweet["geo"] and (type(tweet["geo"]["coordinates"]) == list)):
                    # Coordinates exist in tweet.doc.coordinates.coordinates and is of type list. Geo coordinates can be obtained from here
                    tweetOriginCoordinates = tweet["geo"]["coordinates"]
                    if len(tweetOriginCoordinates) == 2:
                        xPos = tweetOriginCoordinates[1]
                        yPos = tweetOriginCoordinates[0]
                        return [xPos, yPos]

        # Check the Value section - Coordinate - value.geometry.coordinates
        if ("value" in tweet) and (type(tweet["value"]) == dict):
            # Value exists in the tweet data and is of type dictionary. Can be iterated
            if ("geometry" in tweet["value"] and (type(tweet["value"]["geometry"]) == dict)):
                # Geometry exists in tweets.value and is of type dictionary. Can be iterated
                if ("coordinates" in tweet["value"]["geometry"] and (type(tweet["value"]["geometry"]["coordinates"]) == list)):
                    # Coordinates exist in tweet.value.geometry.coordinates and is of type list. Geo coordinates can be obtained from here
                    tweetOriginCoordinates = tweet["value"]["geometry"]["coordinates"]
                    if len(tweetOriginCoordinates) == 2:
                        xPos = tweetOriginCoordinates[0]
                        yPos = tweetOriginCoordinates[1]
                        return [xPos, yPos]

        # Check the Doc section - place - bounding_box - Coordinates
        if ("doc" in tweet) and (type(tweet["doc"]) == dict):
            # doc exists in the tweet data and is of type dictionary. Can be iterated
            if ("place" in tweet["doc"] and (type(tweet["doc"]["place"]) == dict)):
                # place exists in tweets.doc and is of type dictionary. Can be iterated
                if ("bounding_box" in tweet["doc"]["place"] and (type(tweet["doc"]["place"]["bounding_box"]) == dict)):
                    # bounding_box exist and is of type Dict. coordinates can be obtained from here
                    if ("coordinates" in tweet["doc"]["place"]["bounding_box"] and (type(tweet["doc"]["place"]["bounding_box"]["coordinates"]) == list)):
                        tweetOriginCoordinates = tweet["doc"]["geo"]["coordinates"]
                        if len(tweetOriginCoordinates) >= 1:
                            x = [p[0] for p in tweetOriginCoordinates]
                            y = [p[1] for p in tweetOriginCoordinates]
                            return [sum(x) / len(tweetOriginCoordinates), sum(y) / len(tweetOriginCoordinates)]
        else:
            if ("place" in tweet and (type(tweet["place"]) == dict)):
                # place exists in tweets.doc and is of type dictionary. Can be iterated
                if ("bounding_box" in tweet["place"] and (type(tweet["place"]["bounding_box"]) == dict)):
                    # bounding_box exist and is of type Dict. coordinates can be obtained from here
                    if ("coordinates" in tweet["place"]["bounding_box"] and (type(tweet["place"]["bounding_box"]["coordinates"]) == list)):
                        tweetOriginCoordinates = tweet["place"]["bounding_box"]["coordinates"][0]
                        if len(tweetOriginCoordinates) >= 1:
                            x = [p[0] for p in tweetOriginCoordinates]
                            y = [p[1] for p in tweetOriginCoordinates]
                            return [sum(x) / len(tweetOriginCoordinates), sum(y) / len(tweetOriginCoordinates)]
        
        # No proper tweet origin location details found
        return [-1, -1]
    
    def getText(self, tweet):
        return self.text

    def updateID(self, tweet):
        if ("id" in tweet) and (type(tweet["id"]) == int or type(tweet["id"]) == str):
            return str(tweet["id"])
        else:
            return -1

    def updateText(self, tweet):
        if ("doc" in tweet) and (type(tweet["doc"]) == dict):
            if ("text" in tweet["doc"] and (type(tweet["doc"]["text"]) == str)):
                return tweet["doc"]["text"]
        else:
            if ("text" in tweet and (type(tweet["text"]) == str)):
                return tweet["text"]
            elif ("full_text" in tweet and (type(tweet["full_text"]) == str)):
                return tweet["full_text"]
        return ""
    
    def updateIsAngry(self, tweetText):
        analysedData = sentiment_analysis.get_sentiment(tweetText)
        return analysedData[1]

    def updateGeo(self, tweetData):
        return self.getTweetCoordinate(tweetData)
    
