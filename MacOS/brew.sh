#!/usr/bin/env bash

#######################################################################
#Script Name	:brew.sh                                             
#Description	:Install Homebrew, Packages, Applications                                 
#Author       	:Kevin Omyonga (Dr. KNO)                               
#Email         	:komyonga@gmail.com                                    
#Website        :https://kevinomyonga.com                              
#Date         	:Sun Nov  1 17:15:50 EAT 2020                          
#Version        :0.1
#######################################################################

# Import Banner Script
source ./banner.sh

# Check to see if Homebrew is installed, and install it if it is not
banner "Checking Homebrew install status"
command -v brew >/dev/null 2>&1 || { 
  banner "Installing Homebrew Now"
    echo >&2 "Installing Homebrew Now"; 
    \/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; 
}

# Install Brew Packages
banner "Installing Homebrew Packages"
brew install cocoapods
brew install python
brew install tree

# Install MacOS Applications
installApps()
{
  banner "Installing MacOS Applications"
  brew cask install arduino
  brew cask install gimp
  brew cask install virtualbox
}

_prompt="Do you wish to install the MacOS Applications [y/n] ?"
 
# Loop forever until the user enters a valid response (Y/N or Yes/No).
while true; do
 read -r -p "$_prompt " _response
 case "$_response" in
   [Yy][Ee][Ss]|[Yy]) # Yes or Y (case-insensitive).
     installApps
     ;;
   [Nn][Oo]|[Nn])  # No or N.
     break
     ;;
   *) # Anything else (including a blank) is invalid.
     ;;
  esac
done