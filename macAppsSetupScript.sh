#!/bin/sh 

#################################################
# The script is to install applications after fresh installation of Mac OS on a machine.
# Process : 
	# - It enter current user's ~/Desktop.
	# - Installs Mac App store applications 
	# - Dowloads Applications from the web on Desktop.

# By : Ronak
#################################################

cd ~/Desktop/

# Check if Xcode installed or not. Script needs Xcode preinstalled before executing.
if test -e /Applications/Xcode.app
	then
		echo "Xcode exists"
	else
		echo "\nWARNING ==> First Install Xcode manually from App Store, than run this script.\n"
		sleep 2
		echo "Opening App Store...\n"
		sleep 2
		open /Applications/App\ Store.app/
		exit
	fi

# install brew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget
brew install mas

# install mac app store applications
mas install 406056744 	# evernote
mas install 490461369	# Bandwidth+
mas install 409203825	# numbers

# Download Applications from web
wget https://download.teamviewer.com/download/TeamViewer.dmg 	# TeamViewer
wget https://github.com/macvim-dev/macvim/releases/download/snapshot-110/MacVim.dmg 	# MacVim
curl http://j.mp/spf13-vim3 -L -o - | sh 	# spf13 for vim
wget http://download.virtualbox.org/virtualbox/5.1.6/VirtualBox-5.1.6-110634-OSX.dmg	# Virtualbox
wget https://e3.boxcdn.net/box-installers/boxedit/mac/currentrelease/BoxEditInstaller.dmg 	# Box
wget https://github.com/meetfranz/franz-app/releases/download/4.0.4/Franz-darwin-x64-4.0.4.dmg	# Franz Chat App
wget https://get.skype.com/go/getskype-macosx	# Skype 
wget https://iterm2.com/downloads/stable/iTerm2-3_0_10.zip 	# Iterm

# Applications below are not working

# wget https://evernote.com/download/get.php?file=EvernoteMac
# wget https://download.mozilla.org/?product=firefox-49.0.1-SSL&os=osx&lang=en-US 	# 
