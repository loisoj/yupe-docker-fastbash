#!/usr/bin/env bash

sudo apt-get install docker
sudo apt-get install docker-compose
sudo apt-get install git
git clone https://github.com/loisoj/yupe-docker.git
chmod +x ~/yupe-docker/yupe
cd yupe-docker
~/yupe-docker/yupe set-env dev
~/yupe-docker/yupe alive
git clone https://github.com/loisoj/dockermonitoring
cd dockermonitoring
docker-compose up -d
docker ps
