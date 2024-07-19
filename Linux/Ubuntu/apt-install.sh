#!/usr/bin/bash

#!/usr/bin/env bash

#######################################################################
#Script Name	  :apt-install.sh                                             
#Description	  :Provides a UI to navigate through the program                                 
#Author       	  :Derrick Shibero
#Email         	  :shiberoderrickwakhu@gmail.com                    
#Date         	  :Fri Jul  1 17:15:50 EAT 2024                          
#Version          :fork 1.0.0
#######################################################################

echo "Updating and upgrading apt-get.."
sudo apt update && sudo apt upgrade -y
sudo apt-get update && sudo apt-get upgrade -y 
sudo apt-get install ca-certificates curl gnupg wget apt-transport-https build-essential  software-properties-common -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo apt install snapd
echo "Complete updating and upgrading..."

echo "Installing aws-cli and pre-commit"
sudo apt-get install python3-pip -y
sudo pip install aws-cli pre-commit
echo "installed aws-cli and pre-commit"

echo "installing php"
sudo apt install php libapache2-mod-php php-cli php-mysql unzip php-{common,mysql,xml,xmlrpc,curl,gd,imagick,cli,dev,imap,mbstring,opcache,soap,zip,intl} -y
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
cd ~
echo "installed php"

echo "installing ruby and fastlane"
sudo apt install ruby ruby-dev -y
data="export LC_ALL=en_US.UTF-8\nexport LANG=en_US.UTF-8"
echo "$data" | tee "~/.profile" > /dev/null
sudo gem install google-api-client fastlane -NV
echo "installed ruby and fastlane"

echo "installing node and firebase"
sudo apt install node npm -y
npm install -g firebase-tools
echo "installed node and firebase"

echo "installing go"
sudo apt install golang-go -y
echo "installed go"

echo "installing gradle"
sudo apt install default-jdk scala git -y
wget https://services.gradle.org/distributions/gradle-8.1.1-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-*.zip
sudo echo "export GRADLE_HOME=/opt/gradle/gradle-8.1.1\nexport PATH=${GRADLE_HOME}/bin:${PATH}" > /etc/profile.d/gradle.sh
sudo chmod +x /etc/profile.d/gradle.sh
sudo source /etc/profile.d/gradle.sh
echo "installed gradle"

echo "installing kubernetes and minikube"
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo apt install -y apt-transport-https ca-certificates curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo snap install kubectl --classic
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
echo "installed kubernetes and minikube"

echo "installing postgis"
sudo apt install postgis postgresql-12-postgis-3
echo "installed postgis"

echo "finished installing tools"

echo "now installing applications"
sudo snap install altair

sudo add-apt-repository "deb http://ppa.launchpad.net/samoilov-lex/aftl-stable/ubuntu artful main"
sudo apt update && sudo apt install android-file-transfer -y

sudo apt-get -y install android-sdk-build-tools 

sudo snap install android-studio --classic

wget -qO – https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add –
echo “deb http://deb.anydesk.com/ all main” | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash
wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update && sudo apt install -y anydesk arduino balena-etcher-electron blender darktable dotnet-sdk-6.0 aspnetcore-runtime-6.0 fritzing

sudo snap install azuredatastudio bitwarden brave discord drawio figma-linux

sudo snap install flutter --classic

sudo snap install core
sudo snap install godot-4 --edge

sudo apt install gimp

sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.9.0-linux2/GitHubDesktop-linux-2.9.0-linux2.deb
sudo apt-get install gdebi-core
sudo gdebi GitHubDesktop-linux-2.9.0-linux2.deb

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f

composer require laravel/herd

sudo apt install -y inkscape 

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt update && sudo apt install -y microsoft-edge-stable

wget –O teams.deb https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
cd ~
sudo apt install ./teams_1.3.00.5153_amd64.deb

curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal/ pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4

sudo snap install postman
sudo snap install pycharm-community --classic
sudo snap install rpi-imager
sudo snap install signal-desktop

wget https://downloads.apache.org/spark/spark-3.0.1/spark-3.0.1-bin-hadoop2.7.tgz
tar xvf spark-*
sudo mv spark-3.0.1-bin-hadoop2.7 /opt/spark
echo "export SPARK_HOME=/opt/spark" >> ~/.profile
echo "export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin" >> ~/.profile
echo "export PYSPARK_PYTHON=/usr/bin/python3" >> ~/.profile
source ~/.profile

sudo snap install spotify 
sudo add-apt-repository multiverse && sudo add-apt-repository universe
sudo apt update
sudo apt install steam torbrowser-launcher

wget -O - https://hub.unity3d.com/linux/keys/public | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/unityhub.gpg
echo "deb https://hub.unity3d.com/linux/repos/deb stable main" | sudo tee /etc/apt/sources.list.d/unityhub.list
sudo apt update
sudo apt install unityhub

sudo snap install --classic code
sudo snap install vlc

sudo apt install xfce4 xfce4-goodies tightvncserver

sudo add-apt-repository ppa:wireshark-dev/stable && sudo apt update
sudo apt install wireshark 

sudo apt install apache2 mariadb-server mariadb-client
sudo systemctl enable apache2
sudo systemctl enable --now mariadb

cd /tmp && wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
cp -R wordpress /var/www/html/
chown -R www-data:www-data /var/www/html/wordpress/
chmod -R 755 /var/www/html/wordpress/
cd /var/www/html/wordpress

cp wp-config-sample.php wp-config.php

chown www-data:www-data wp-config.php
cd ~
sudo apt-get install zenmap

 sudo snap install zoom-client




