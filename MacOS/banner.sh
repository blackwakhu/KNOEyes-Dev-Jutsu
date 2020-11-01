#!/usr/bin/env bash

#######################################################################
#Script Name	:banner.sh                                             
#Description	:Displays banners for clean, standardised presentation
#Args           :Section Message                                                      
#Author       	:Kevin Omyonga (Dr. KNO)                               
#Email         	:komyonga@gmail.com                                    
#Website        :https://kevinomyonga.com                              
#Date         	:Sun Nov  1 17:15:50 EAT 2020
#Version        :0.1
#######################################################################

# Display Banner Logo
bannerLogo()
{
  files=(ascii/)
  randomfile=`ls $files | grep ".ascii" | head -1`
  
  echo -e "\e[93m"
  cat $files$randomfile
  echo -e "\e[0m"
}

# Display Banner Message
banner()
{
  echo "+------------------------------------------+"
  printf "| %-40s |\n" "`date`"
  echo "|                                          |"
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}
