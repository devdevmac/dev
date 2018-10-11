#!/usr/bin/env bash

ssh-copy-id vagrant@@192.168.2.2
docker-machine create -d generic --generic-ip-address=192.168.2.2 --generic-ssh-user=vagrant sb