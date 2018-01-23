echo " Для установки BASE используйте ./x install"
echo " Для полной установки используйте ./x full-install"
echo " ПО УМОЛЧАНИЮ xi выполняет полную установку(с мониторингом)"



install(){
sudo apt-get install docker
sudo apt-get install docker-compose
sudo apt-get install git
git clone https://github.com/loisoj/yupe-docker.git
chmod +x ~/yupe-docker/yupe
cd yupe-docker
~/yupe-docker/yupe set-env dev
~/yupe-docker/yupe alive
docker ps
}

full-install(){
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
}
