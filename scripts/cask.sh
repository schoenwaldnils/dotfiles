#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing applications via cask from cask.sh"
echo "#############################"
echo ""

# get current location
ROOT_DIR=$1

echo "installing VSCode"
brew uninstall --cask --force visual-studio-code && brew install --cask visual-studio-code
brew uninstall --cask --force visual-studio-code-insiders && brew install --cask visual-studio-code-insiders


brew tap homebrew/cask-versions

echo "installing custom fonts"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-oswald
brew install --cask font-ubuntu
# contentful slide font
brew install --cask font-muli

brew tap jeroenknoops/tap
brew install gitin


brew install --cask 1password
brew install --cask android-studio
brew install --cask bartender
brew install --cask brave-browser
brew install --cask choosy
brew install --cask cyberduck
brew install --cask discord
brew install --cask dropshare
brew install --cask firefox
brew install --cask google-chrome
brew install --cask google-photos-backup-and-sync
brew install --cask istat-menus
brew install --cask iterm2

# install iterm utilities right away
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash

brew install --cask kap
brew install --cask keycastr
brew install --cask logitech-presentation
brew install --cask monitorcontrol
brew install --cask namechanger
brew install --cask ngrok
brew install --cask parallels
brew install --cask rocket
brew install --cask scroll-reverser
brew install --cask sketch
brew install --cask skype
brew install --cask sourcetree
brew install --cask spotify
brew install --cask teamviewer
brew install --cask telegram
brew install --cask tripmode
brew install --cask unified-remote
brew install --cask vlc
brew install --cask whatsapp
brew install --cask zoomus
