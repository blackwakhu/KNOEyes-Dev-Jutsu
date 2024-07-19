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
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install ca-certificates curl gnupg wget apt-transport-https build-essential -y
sudo install -m 0755 -d /etc/apt/keyrings
echo "Complete updating and upgrading..."

echo "Installing aws-cli"
sudo apt-get install python3-pip -y
sudo pip install aws-cli
echo "installed aws-cli"

echo "installing php"
sudo apt install php libapache2-mod-php php-cli unzip -y
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
sudo apt install default-jdk -y
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


