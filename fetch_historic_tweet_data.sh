mkdir historicData

curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,1,1]' \
--data-urlencode 'end_key=["melbourne",2014,1,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-1-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,2,1]' \
--data-urlencode 'end_key=["melbourne",2014,2,28]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-2-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,3,1]' \
--data-urlencode 'end_key=["melbourne",2014,3,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-3-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,4,1]' \
--data-urlencode 'end_key=["melbourne",2014,4,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-4-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,5,1]' \
--data-urlencode 'end_key=["melbourne",2014,5,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-5-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,6,1]' \
--data-urlencode 'end_key=["melbourne",2014,6,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-6-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,7,1]' \
--data-urlencode 'end_key=["melbourne",2014,7,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-7-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,8,1]' \
--data-urlencode 'end_key=["melbourne",2014,8,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-8-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,9,1]' \
--data-urlencode 'end_key=["melbourne",2014,9,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-9-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,10,1]' \
--data-urlencode 'end_key=["melbourne",2014,10,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-10-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,11,1]' \
--data-urlencode 'end_key=["melbourne",2014,11,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-11-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2014,12,1]' \
--data-urlencode 'end_key=["melbourne",2014,12,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-12-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,1,1]' \
--data-urlencode 'end_key=["melbourne",2015,1,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-1-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,2,1]' \
--data-urlencode 'end_key=["melbourne",2015,2,28]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-2-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,3,1]' \
--data-urlencode 'end_key=["melbourne",2015,3,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-3-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,4,1]' \
--data-urlencode 'end_key=["melbourne",2015,4,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-4-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,5,1]' \
--data-urlencode 'end_key=["melbourne",2015,5,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-5-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,6,1]' \
--data-urlencode 'end_key=["melbourne",2015,6,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-6-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,7,1]' \
--data-urlencode 'end_key=["melbourne",2015,7,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-7-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,8,1]' \
--data-urlencode 'end_key=["melbourne",2015,8,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-8-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,9,1]' \
--data-urlencode 'end_key=["melbourne",2015,9,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-9-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,10,1]' \
--data-urlencode 'end_key=["melbourne",2015,10,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-10-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,11,1]' \
--data-urlencode 'end_key=["melbourne",2015,11,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-11-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2015,12,1]' \
--data-urlencode 'end_key=["melbourne",2015,12,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2015-12-tweets.json"

curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,1,1]' \
--data-urlencode 'end_key=["melbourne",2016,1,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-1-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,2,1]' \
--data-urlencode 'end_key=["melbourne",2016,2,29]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-2-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,3,1]' \
--data-urlencode 'end_key=["melbourne",2016,3,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-3-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,4,1]' \
--data-urlencode 'end_key=["melbourne",2016,4,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-4-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,5,1]' \
--data-urlencode 'end_key=["melbourne",2016,5,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-5-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,6,1]' \
--data-urlencode 'end_key=["melbourne",2016,6,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-6-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,7,1]' \
--data-urlencode 'end_key=["melbourne",2016,7,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-7-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,8,1]' \
--data-urlencode 'end_key=["melbourne",2016,8,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-8-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,9,1]' \
--data-urlencode 'end_key=["melbourne",2016,9,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-9-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,10,1]' \
--data-urlencode 'end_key=["melbourne",2016,10,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-10-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,11,1]' \
--data-urlencode 'end_key=["melbourne",2016,11,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-11-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,12,1]' \
--data-urlencode 'end_key=["melbourne",2016,12,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2016-12-tweets.json"

curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,1,1]' \
--data-urlencode 'end_key=["melbourne",2017,1,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-1-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,2,1]' \
--data-urlencode 'end_key=["melbourne",2017,2,28]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-2-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,3,1]' \
--data-urlencode 'end_key=["melbourne",2017,3,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-3-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,4,1]' \
--data-urlencode 'end_key=["melbourne",2017,4,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-4-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,5,1]' \
--data-urlencode 'end_key=["melbourne",2017,5,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-5-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,6,1]' \
--data-urlencode 'end_key=["melbourne",2017,6,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-6-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,7,1]' \
--data-urlencode 'end_key=["melbourne",2017,7,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-7-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,8,1]' \
--data-urlencode 'end_key=["melbourne",2017,8,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-8-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,9,1]' \
--data-urlencode 'end_key=["melbourne",2017,9,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-9-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,10,1]' \
--data-urlencode 'end_key=["melbourne",2017,10,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-10-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,11,1]' \
--data-urlencode 'end_key=["melbourne",2017,11,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-11-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,12,1]' \
--data-urlencode 'end_key=["melbourne",2017,12,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2017-12-tweets.json"

curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,1,1]' \
--data-urlencode 'end_key=["melbourne",2018,1,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-1-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,2,1]' \
--data-urlencode 'end_key=["melbourne",2018,2,28]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-2-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,3,1]' \
--data-urlencode 'end_key=["melbourne",2018,3,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-3-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,4,1]' \
--data-urlencode 'end_key=["melbourne",2018,4,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-4-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,5,1]' \
--data-urlencode 'end_key=["melbourne",2018,5,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-5-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,6,1]' \
--data-urlencode 'end_key=["melbourne",2018,6,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-6-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,7,1]' \
--data-urlencode 'end_key=["melbourne",2018,7,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-7-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,8,1]' \
--data-urlencode 'end_key=["melbourne",2018,8,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-8-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,9,1]' \
--data-urlencode 'end_key=["melbourne",2018,9,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-9-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,10,1]' \
--data-urlencode 'end_key=["melbourne",2018,10,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-10-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,11,1]' \
--data-urlencode 'end_key=["melbourne",2018,11,30]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-11-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2018,12,1]' \
--data-urlencode 'end_key=["melbourne",2018,12,31]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2018-12-tweets.json"
