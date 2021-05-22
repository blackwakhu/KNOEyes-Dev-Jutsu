#!/usr/bin/env bash

#######################################################################
#Script Name	  :install.sh                                             
#Description	  :Kicks off the setup                                 
#Author       	  :Kevin Omyonga (Dr. KNO)                               
#Email         	  :info@kevinomyonga.com                                    
#Website          :https://kevinomyonga.com                               
#Company Email    :info@knoeyes.com                                    
#Company Website  :https://knoeyes.com                              
#Date             :Sun Nov  1 17:15:50 EAT 2020
#Version          :1.0.0
#######################################################################

# Import Banner Script
source ./banner.sh

# Genesis
banner "Starting the Job"

# Run the Homebrew Script
./brew.sh

# Completed
banner "Finished."