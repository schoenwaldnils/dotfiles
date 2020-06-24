#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing applications via cask from cask.sh"
echo "#############################"
echo ""

# get current location
ROOT_DIR=$1

echo "installing VSCode"
brew cask uninstall --force visual-studio-code && brew cask install visual-studio-code


echo "installing custom fonts"
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew cask install font-oswald
# contentful slide font
brew cask install font-muli

brew tap jeroenknoops/tap
brew install gitin


brew cask install 1password
brew cask install bartender
brew cask install cyberduck
brew cask install discord
brew cask install dropshare
brew cask install firefox
brew cask install google-chrome
brew cask install google-photos-backup-and-sync
brew cask install istat-menus
brew cask install iterm2
brew cask install kap
brew cask install keycastr
brew cask install logitech-presentation
brew cask install namechanger
brew cask install ngrok
brew cask install parallels
brew cask install rocket
brew cask install scroll-reverser
brew cask install sketch
brew cask install skype
brew cask install sourcetree
brew cask install spotify
brew cask install teamviewer
brew cask install telegram
brew cask install tripmode
brew cask install unified-remote
brew cask install vlc
brew cask install whatsapp
brew cask install zoomus