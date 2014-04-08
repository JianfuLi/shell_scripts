#!/bin/bash
curl -s https://get.docker.io/ubuntu/ | sudo sh
mv /etc/default/docker /etc/default/docker.`date +"%Y%m%d"`
cp ./etc_default_docker /etc/default/docker

