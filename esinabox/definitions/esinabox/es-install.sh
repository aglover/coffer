apt-get install curl -y 
# start Java 7 64 bit
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java7_64.sh && bash equip_java7_64.sh
# ElasticSearch (https://gist.github.com/wingdspur/2026107)
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.deb
sudo dpkg -i elasticsearch-0.90.7.deb
# Remove items used for building, since they aren't needed anymore
apt-get -y remove linux-headers-$(uname -r) build-essential
apt-get -y autoremove

