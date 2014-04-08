#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install subversion git -y
sudo apt-get install zip unzip -y
wget https://nodeload.github.com/goagent/goagent/legacy.zip/3.0 -o goagent-3.17.zip
unzip goagent-3.17.zip
