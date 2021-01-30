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

banner "Installing Apple Command Line Tools"
# Install Apple Command Line Tools
xcode-select --install

# Install Brew Packages
banner "Installing Homebrew Packages"
# Dependency manager for Cocoa projects
brew install cocoapods
# Interpreted, interactive, object-oriented programming language
brew install python
# Display directories as trees (with optional color/HTML output)
brew install tree
# Download YouTube videos from the command-line
brew install youtube-dl

# Install MacOS Applications
installApps()
{
  banner "Installing MacOS Applications"

  # Helps correct any issues there may be with the cask module 
  brew doctor

  # Transfer files from and to an Android smartphone
  brew install --cask android-file-transfer
  # Tools for building Android applications
  brew install --cask android-studio
  # Open-source electronics prototyping platform
  brew install --cask arduino
  # Tool to flash OS images to SD cards & USB drives
  brew install --cask balenaetcher
  # Desktop password and login vault
  brew install --cask bitwarden
  # Web browser focusing on privacy
  brew install --cask brave-browser
  # Photography workflow application and raw developer
  brew install --cask darktable
  # Voice and text chat software
  brew install --cask discord
  # Client for the Dropbox cloud storage service
  brew install --cask dropbox
  # Launcher for *Epic Games* games
  brew install --cask epic-games
  # Figma
  brew install --cask figma
  # UI toolkit for building applications for mobile, web and desktop
  brew install --cask flutter
  # Fritzing
  brew install --cask fritzing
  # Free and open-source image editor
  brew install --cask gimp
  # Desktop client for GitHub repositories
  brew install --cask github
  # Oracle Java Standard Edition Development Kit
  brew install --cask oracle-jdk
  # 2D sprite editor made with the Godot Engine
  brew install --cask pixelorama
  # Organize your projects with customizable templates
  brew install --cask post-haste
  # Collaboration platform for API development
  brew install --cask postman
  # Software sketchbook and a language for learning how to code within the context of the visual arts. 
  brew install --cask processing
  # Raspberry Pi Imager
  brew install --cask raspberry-pi-imager
  # The ultimate destination for playing, discussing, and creating games.
  brew install --cask steam
  # TexturePacker - Tool For Handling Sprites Used In My Game Development
  brew install --cask texturepacker
  # Platform for 3D content
  brew install --cask unity
  # Management tool for Unity
  brew install --cask unity-hub
  # Open-source code editor
  brew install --cask visual-studio-code
  # Open-source cross-platform multimedia player
  brew install --cask vlc
  # Remote desktop application focusing on security
  brew install --cask vnc-viewer
  # Wireshark - Network protocol analyzer
  brew install --cask wireshark
  # Wordpress client
  brew install --cask wordpresscom
  # Video communication and virtual meeting platform
  brew install --cask zoom
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