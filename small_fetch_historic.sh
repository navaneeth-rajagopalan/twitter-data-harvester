mkdir historicData

curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2016,1,1]' \
--data-urlencode 'end_key=["melbourne",2016,1,2]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-1-tweets.json"


curl "http://data_server_IP_Addr/couchdbro/twitter/_design/twitter/_view/summary" \
-G \
--data-urlencode 'start_key=["melbourne",2017,2,1]' \
--data-urlencode 'end_key=["melbourne",2017,2,2]' \
--data-urlencode 'reduce=false' \
--data-urlencode 'include_docs=true' \
--user "readonly:#################" \
-o "historicData/2014-2-tweets.json"

