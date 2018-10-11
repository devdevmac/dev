#!/usr/bin/env bash

docker-machine  create -d "virtualbox"  --virtualbox-cpu-count "2"   \
 --virtualbox-disk-size "66666" --virtualbox-memory "2048"  \
 --virtualbox-host-dns-resolver  \
 --virtualbox-nat-nictype "82540EM" --virtualbox-share-folder "/Volumes/vvv:/home/vvv"  \
 --virtualbox-ui-type "headless"  \
 default


echo "安装管理服务器"

echo "ssh default"

echo " git clone https://github.com/swarmpit/swarmpit "

