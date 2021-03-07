#!/usr/bin/env bash

#######################################################################
#Script Name	:install.sh                                             
#Description	:Kicks off the setup
#Args           :                                                      
#Author       	:Kevin Omyonga (Dr. KNO)                               
#Email         	:komyonga@gmail.com                                                                     
#Website        :https://kevinomyonga.com                              
#Date         	:Sun Nov  1 17:15:50 EAT 2020
#Version        :1.0.0
#######################################################################

# Import Banner Script
source ./banner.sh

# Genesis
banner "Starting the Job"

# Run the Homebrew Script
./brew.sh

# Completed
banner "Finished."