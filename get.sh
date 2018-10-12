#!/usr/bin/env bash

git submodule init
git submodule add https://github.com/devdevmac/boot2docker.git
git submodule add https://github.com/devdevmac/Git-Auto-Deploy.git
git submodule add https://github.com/devdevmac/terraform.git
git submodule add https://github.com/devdevmac/galaxy.git
git submodule add https://github.com/tp4a/teleport.git
git sbumodule update --checkout
