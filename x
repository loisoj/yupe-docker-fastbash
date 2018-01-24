#!/usr/bin/env bash

echo "Starting full install..."

sudo apt-get install docker
echo "Docker installed +"
sudo apt-get remove docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
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
