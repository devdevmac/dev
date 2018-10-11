#!/usr/bin/env bash

docker-machine  create -d "virtualbox" --swarm --swarm-image "swarm:latest"  \
 --swarm-experimental --swarm-host "tcp://0.0.0.0:3376"  \
 --swarm-strategy "spread" --virtualbox-cpu-count "2"   \
 --virtualbox-disk-size "66666" --virtualbox-memory "2048"  \
 --virtualbox-nat-nictype "82540EM" --virtualbox-share-folder "/Volumes:disk" default


echo "安装管理服务器"

echo "ssh default"

echo " git clone https://github.com/swarmpit/swarmpit "

