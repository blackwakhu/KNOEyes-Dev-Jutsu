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
sudo apt-get update && sudo apt-get upgrade
echo "Complete updating and upgrading..."
echo "Installing python3-pip..."
sudo apt-get install python3-pip
echo "Installing awscli"
sudo pip install aws-cli
echo "finished installing aws-cli"

