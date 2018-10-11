#!/usr/bin/env bash

docker-machine  create -d "virtualbox"  --virtualbox-cpu-count "2"   \
 --virtualbox-disk-size "66666" --virtualbox-memory "3072"  \
 --virtualbox-nat-nictype "82540EM" --virtualbox-share-folder "/Volumes/vvv:vvv" idea