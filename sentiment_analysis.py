# -*- coding: utf-8 -*-
"""
Created on Fri May  3 18:14:11 2019

@author: Spoorthi
"""
import pandas as pd
import re
import numpy as np
from pandas.io.json import json_normalize
import emoji
import nltk
import itertools
from nltk.tokenize import word_tokenize
from nltk.tokenize import WhitespaceTokenizer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import MultinomialNB
from sklearn import metrics
from contraction_values import CONTRACTION, emotion, stopwords

global clf, tf

#Function to eliminate mentions and convert tweets to lowercase
def removeMentionsCase(input_txt, pattern):
    r = re.findall(pattern, input_txt)
    for i in r:
        input_txt = re.sub(i, '', input_txt)        
    input_txt=input_txt.lower()       
    return input_txt 

#Contraction expand 
#correct spelling (replace more than 2 repetitions of chars with max 2 char occurence) 
#smiley and emoticon treatment
def expandContraction(input_txt):
    tweet = input_txt.replace("’","'")
    words = tweet.split()
    contracted = [CONTRACTION[word] if word in CONTRACTION else word for word in words]
    cleaned = [emotion[word] if word in emotion else word for word in contracted]
    tweet = " ".join(cleaned)
    tweet = ''.join(''.join(s)[:2] for _, s in itertools.groupby(tweet))
    tweet = emoji.demojize(tweet)
    tweet = tweet.replace(":"," ")
    tweet = ' '.join(tweet.split())
    return tweet

def classifier():
	#Import train data
	train_data=pd.read_csv('emotional.csv')
	#Tranform text to feauture vector
	global tf
	tf=TfidfVectorizer()
	#Initial fitting of parameters
	text_tf= tf.fit_transform(train_data['text'])
	#Split training data as train and test
	X_train, X_test, y_train, y_test = train_test_split(
		text_tf, train_data['emotion'], test_size=0.3, random_state=123)
	#Fit the model
	clf = MultinomialNB().fit(X_train, y_train)
	return clf

def get_sentiment(input_text):
    text=re.sub(r"http\S+","",input_text)
    text=removeMentionsCase(text,"@[\w]*")
    text=expandContraction(text)
    text=re.sub("[^0-9a-zA-Z#]", " ",text)
    text=WhitespaceTokenizer().tokenize(text)
    text=' '.join([w for w in text if not w in stopwords])
    text=re.sub(r'\s+',' ', text)
    cleaned=text.strip()
    cleaned=[cleaned]
    #Transform tweets 
    transformed_data = tf.transform(cleaned)
    predicted= clf.predict(transformed_data)
    return cleaned,predicted[0]

global clf
clf=classifier()