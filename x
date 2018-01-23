#!/usr/bin/env bash

echo "Starting full install..."

sudo apt-get install docker
echo "Docker installed +"
sudo apt-get install docker-compose
echo "Docker-compose installed +"
sudo apt-get install git
echo "Git installed +"
git clone https://github.com/loisoj/yupe-docker.git
echo "git clone end +"
chmod +x ~/yupe-docker/yupe
cd yupe-docker
~/yupe-docker/yupe set-env dev
~/yupe-docker/yupe alive
echo "yupe docker installed +"
echo "Base Started! +"
echo " "
echo "Starting installing Monitor System..."
git clone https://github.com/loisoj/dockermonitoring
cd dockermonitoring
docker-compose up -d
docker ps
echo " "
echo "All ok! +"
