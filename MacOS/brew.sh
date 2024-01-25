#!/usr/bin/env bash

#######################################################################
#Script Name	    :brew.sh                                             
#Description	    :Install Homebrew, Packages, Applications                                 
#Author       	  :Kevin Omyonga (Dr. KNO)                               
#Email         	  :info@kevinomyonga.com                                    
#Website          :https://kevinomyonga.com                               
#Company Email    :info@knoeyes.com                                    
#Company Website  :https://knoeyes.com                              
#Date         	  :Sun Nov  1 17:15:50 EAT 2020                          
#Version          :1.0.0
#######################################################################

# Import Banner Script
source ./banner.sh

# Check to see if Homebrew is installed, and install it if it is not
banner "Checking Homebrew install status"
command -v brew >/dev/null 2>&1 || { 
  banner "Installing Homebrew Now"
    echo >&2 "Installing Homebrew Now"; 
    \/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; 
}

banner "Installing Apple Command Line Tools"
# Install Apple Command Line Tools
xcode-select --install

# Install Brew Packages
banner "Installing Homebrew Packages"
# Official Amazon AWS command-line interface
brew install awscli
# Dependency manager for Cocoa projects
brew install cocoapods
# Dependency Manager for PHP
#brew install composer
# Easiest way to build and release mobile apps
brew install fastlane
# Firebase command-line tools
brew install firebase-cli
# Distributed revision control system
brew install git
# Open source programming language to build simple/reliable/efficient software
brew install go
# Open-source build automation tool based on the Groovy and Kotlin DSL
brew install gradle
# Kubernetes command-line interface
#brew install kubernetes-cli
# Run a Kubernetes cluster locally
#brew install minikube
# Platform built on V8 to build network applications
brew install node
# General-purpose scripting language
#brew install php
# Adds support for geographic objects to PostgreSQL
#brew install postgis
# Object-relational database system
#brew install postgresql
# Framework for managing multi-language pre-commit hooks
#brew install pre-commit
# Cloud native development platform
brew install pulumi
# Interpreted, interactive, object-oriented programming language
brew install python
# Display directories as trees (with optional color/HTML output)
brew install tree
# Vi 'workalike' with many additional features
brew install vim
# Download YouTube videos from the command-line
#brew install youtube-dl

# Install MacOS Applications
installApps()
{
  banner "Installing MacOS Applications"

  # Helps correct any issues there may be with the cask module 
  brew doctor

  # GraphQL client
  brew install --cask altair-graphql-client
  # Transfer files from and to an Android smartphone
  brew install --cask android-file-transfer
  # Android SDK Command-line Tools
  brew install --cask android-commandlinetools
  # Android SDK component
  brew install --cask android-platform-tools
  # Tools for building Android applications
  brew install --cask android-studio
  # Open-source electronics prototyping platform
  brew install --cask arduino
  # Data management tool that enables working with SQL Server
#  brew install --cask azure-data-studio
  # Tool to flash OS images to SD cards & USB drives
  brew install --cask balenaetcher
  # 3D creation suite
  brew install --cask blender
  # Desktop password and login vault
  brew install --cask bitwarden
  # Web browser focusing on privacy
  brew install --cask brave-browser
  # Design tool
  brew install --cask canva
  # Tool to show live information about the batteries in various devices
  brew install --cask coconutbattery
  # Server and cloud storage browser
  #brew install --cask cyberduck
  # Photography workflow application and raw developer
  #brew install --cask darktable
  # Voice and text chat software
  brew install --cask discord
  # App to build and share containerized applications and microservices
  brew install --cask docker
  # .NET SDK Developer platform
#  brew install --cask dotnet-sdk
  # Client for the Dropbox cloud storage service
  brew install --cask dropbox
  # Launcher for *Epic Games* games
  #  brew install --cask epic-games
  # Mozilla Firefox Web browser
  brew install --cask firefox
  # Figma
  brew install --cask figma
  # UI toolkit for building applications for mobile, web and desktop
#  brew install --cask flutter
  # Fritzing
  brew install --cask fritzing
  # Game development engine
  brew install --cask godot
  # Free and open-source image editor
  brew install --cask gimp
  # Desktop client for GitHub repositories
  brew install --cask github
  # Google Chrome Web browser
  brew install --cask google-chrome
  # Laravel and PHP development environment manager
  brew install --cask herd
  # Vector graphics editor
  brew install --cask inkscape
  # WordPress local development tool by Flywheel
#  brew install --cask local
  # Microsoft Edge
  brew install --cask microsoft-edge
  # Meet, chat, call, and collaborate in just one place
  brew install --cask microsoft-teams
  # Oracle Java Standard Edition Development Kit
  brew install --cask oracle-jdk
  # Administration and development platform for PostgreSQL
  #brew install --cask pgadmin4
  # Organize your projects with customizable templates
#  brew install --cask post-haste
  # Collaboration platform for API development
  brew install --cask postman
  # Software sketchbook and a language for learning how to code within the context of the visual arts. 
  brew install --cask processing
  # IDE for Python programming - Community Edition
#  brew install --cask pycharm-ce
  # Raspberry Pi Imager
  brew install --cask raspberry-pi-imager
  # Design tool that creates functional graphics
  brew install --cask rive
  # Instant messaging application focusing on security
  brew install --cask signal
  # Create and share augmented reality experiences using the Facebook family of apps
#  brew install --cask spark-ar-studio
  # Music streaming service
  brew install --cask spotify
  # The ultimate destination for playing, discussing, and creating games.
  brew install --cask steam
  # Web browser focusing on security
  brew install --cask tor-browser
  # Platform for 3D content
  brew install --cask unity
  # Management tool for Unity
  brew install --cask unity-hub
  # Android target support for Unity
  brew install --cask unity-android-support-for-editor
  # iOS target support for Unity
  brew install --cask unity-ios-support-for-editor
  # Microsoft Visual Studio Integrated development environment
#  brew install --cask visual-studio
  # Open-source code editor
  brew install --cask visual-studio-code
  # Open-source cross-platform multimedia player
  brew install --cask vlc
  # Remote desktop application focusing on security
  brew install --cask vnc-viewer
  # Wireshark - Network protocol analyzer
  brew install --cask wireshark
  # Wordpress client
#  brew install --cask wordpresscom
  # Multi-platform graphical interface for official Nmap Security Scanner
#  brew install --cask zenmap
  # Video communication and virtual meeting platform
  brew install --cask zoom

  # Clean up installation files to preserve precious storage space
  brew cleanup
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
