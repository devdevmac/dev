#!/usr/bin/env bash

ssh-copy-id idea@b.local
docker-machine create -d generic --generic-ip-address=b.local --generic-ssh-user=root  local

ssh-copy-id s@s.local
docker-machine create -d generic --generic-ip-address=s.local --generic-ssh-user=root s