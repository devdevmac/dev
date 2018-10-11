#!/usr/bin/env bash
brew tap linuxkit/linuxkit
brew install linuxkit
brew install --HEAD moby
brew install --HEAD linuxkit
brew install --HEAD rtf
brew install --HEAD manifest-tool


brew reinstall --HEAD moby

brew remove moby
brew remove linuxkit
brew untap linuxkit/linuxkit