#!/usr/bin/env sh

echo "#############################"
echo "# Installing various programs from brew"
echo "#############################"
echo ""

ROOT_DIR=$1
source "$ROOT_DIR/commands/__util.sh"

brew -v >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew_install_or_upgrade zsh
brew_install_or_upgrade zsh-completions
brew_install_or_upgrade zsh-history-substring-search

# set it as default shell
chsh -s /bin/zsh

brew_install_or_upgrade highlight
brew_install_or_upgrade jq
brew_install_or_upgrade bat
# brew_install_or_upgrade autojump
brew_install_or_upgrade z
brew_install_or_upgrade exa
brew_install_or_upgrade github/gh/gh
brew_install_or_upgrade curl
brew_install_or_upgrade git-delta
# brew_install_or_upgrade go
brew_install_or_upgrade shellcheck

# ffmpeg for quick video compression
brew install ffmpeg --with-vorbis --with-libvorbis --with-vorbis --with-theora --with-libogg --with-libvorbis --with-gpl --with-version3 --with-nonfree --with-postproc --with-libaacplus --with-libass --with-libcelt --with-libfaac --with-libfdk-aac --with-libfreetype --with-libmp3lame --with-libopencore-amrnb --with-libopencore-amrwb --with-libopenjpeg --with-openssl --with-libopus --with-libschroedinger --with-libspeex --with-libtheora --with-libvo-aacenc --with-libvorbis --with-libvpx --with-libx264 --with-libxvid

# *********************************
# mac app store
brew_install_or_upgrade mas

mas install 937984704 # Amphetamine
mas install 1116599239 # Nord VPN
mas install 803453959 # Slack
mas install 413857545 # Divvy
mas install 425424353 # The Unarchiver
mas install 1278508951 # Trello
mas install 585829637 # Todoist
