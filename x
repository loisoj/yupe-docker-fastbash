sudo apt-get install docker
sudo apt-get install docker-compose
sudo apt-get install git
git clone https://github.com/maxim-avramenko/yupe-docker.git
chmod +x ~/yupe-docker/yupe
cd yupe-docker
~/yupe-docker/yupe set-env dev
~/yupe-docker/yupe alive
