if [ $# -eq 0 ]
  then
    echo "Missing Instance ID, Total Instances and Couch DB Instance IP Address"
    exit 1
fi
if [ $# -eq 1 ]
  then
    echo "Missing Total Instances and Couch DB Instance IP Address"
    exit 1
fi
if [ $# -eq 2 ]
  then
    echo "Missing Couch DB Instance IP Address"
    exit 1
fi
apt-get update
apt-get install git
apt-get install python3.6
apt install python3-pip
pip3 install schedule pandas emoji nltk sklearn tweepy couchdb
rm -rf /harvester/.git
rm -rf harvester
git clone https://bitbucket.org/ccc_assignment2/harvester.git harvester
cd harvester
nohup python3 harvester.py $1 $2 $3 &