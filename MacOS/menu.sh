#!/usr/bin/env bash

#######################################################################
#Script Name	:menu.sh                                             
#Description	:Provides a UI to navigate through the program                                 
#Author       	:Kevin Omyonga (Dr. KNO)                               
#Email         	:komyonga@gmail.com                                    
#Website        :https://kevinomyonga.com                              
#Date         	:Sun Nov  1 17:15:50 EAT 2020                          
#Version        :0.1
#######################################################################

# Import Banner Script
source ./banner.sh

# Diplay Banner ASCII Logo
bannerLogo

# Bash Menu Script
PS3='Please select an option: '
options=("Install" "About" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install")
            # Run the Homebrew Script
            ./install.sh
            ;;
        "About")
            # Run the About Script
            ./about.sh
            ;;
        "Bankai")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done