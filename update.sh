#/bin/bash
# Automatically pull and update new container version
echo "###################################################"
echo "# iota-nelson-node update script                  #"
echo "# https://github.com/ioiobzit/iota-nelson-node    #"
echo "# https://twitter.com/antonionardella             #"
echo "###################################################"

echo "###################################################"
echo "# Pull latest version from github                 #"
echo "###################################################"

git pull

echo "###################################################"
echo "# Stop all iota-nelson-node docker containers     #"
echo "###################################################"

docker-compose stop && \

echo "###################################################"
echo "# Pulling all iota-nelson-node containers updates #"
echo "###################################################"

docker-compose pull && \

echo "###################################################"
echo "# Removing all old iota-nelson-node containers    #"
echo "###################################################"
docker-compose rm -f iota && \
docker-compose rm -f nelson.cli && \
docker-compose rm -f nelson.mon && \
docker-compose rm -f nelson.gui && \
docker-compose rm -f prometheus && \
docker-compose rm -f iota-prom-exporter && \
docker-compose rm -f node-exporter && \
docker-compose rm -f grafana && \

echo "###################################################"
echo "# Restart all iota-nelson-node docker containers  #"
echo "###################################################"

docker-compose up -d

echo "###################################################"
echo "# Thank you for using this project!               #"
echo "#                                                 #"
echo "# Donations always welcome                        #"
echo "#                                                 #"
echo "# IOTA:                                           #"
echo "#                                                 #"
echo "# CHQAYWPQUGQ9GANEWISFH99XBMTZAMHFFMPHWCLUZPFKJTF #"
echo "# DFIJXFWCBISUTVGSNW9JI9QCOAHUHFUQC9SYVFXDQ9D     #"
echo "#                                                 #"
echo "# BTC:                                            #"
echo "#                                                 #"
echo "# 1BFgqtMC2nfRxPRge5Db3gkYK7kDwWRF79              #"
echo "###################################################"
