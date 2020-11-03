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
# Dependency manager for Cocoa projects
brew install cocoapods
# Interpreted, interactive, object-oriented programming language
brew install python
# Display directories as trees (with optional color/HTML output)
brew install tree

# Install MacOS Applications
installApps()
{
  banner "Installing MacOS Applications"
  # Open-source electronics prototyping platform
  brew cask install arduino
  # Tool to flash OS images to SD cards & USB drives
  brew cask install balenaetcher
  # Voice and text chat software
  brew cask install discord
  # Launcher for *Epic Games* games
  brew cask install epic-games
  # Free and open-source image editor
  brew cask install gimp
  # Desktop client for GitHub repositories
  brew cask install github
  # Software sketchbook and a language for learning how to code within the context of the visual arts. 
  brew cask install processing
  # A powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use
  brew cask install virtualbox
  # Open-source code editor
  brew cask install visual-studio-code
  # Open-source cross-platform multimedia player
  brew cask install vlc
  # Remote desktop application focusing on security
  brew cask install vnc-viewer
  # Video communication and virtual meeting platform
  brew cask install zoomus
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