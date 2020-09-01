#!/usr/bin/env sh

# get current location
ROOT_DIR=$1
CONFIG_DIR="$ROOT_DIR/config"
SCRIPTS_DIR="$ROOT_DIR/scripts"

source "$ROOT_DIR/commands/__util.sh"

echo "Running commands/install.sh..."



# **********************************
# root config files (.gitconfig, .npmrc, ...)
#

log_section_start "Sym linking files from $FROM_FILES to $TARGET_DIR"

FROM_FILES="$CONFIG_DIR/home/.*"
TARGET_DIR=~
symlink_files "$FROM_FILES" "$TARGET_DIR"



# **********************************
# iTerm stuff
#

log_section_start "Installing iTerm2 shell integration for fancy menubar"
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh



# *************************************
# oh-my-zsh
#

log_section_start "Installing oh-my-zsh"

if [ -d ~/.oh-my-zsh/ ]; then
  echo "Cleaning up ~/.oh-my-zsh/"
  rm -rf ~/.oh-my-zsh/
fi

RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing zsh-git-prompt"
git clone git@github.com:olivierverdier/zsh-git-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-git-prompt

echo "Installing zsh-syntax-highlighting"
git clone git://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing zsh-autosuggestions"
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing zsh-history-substring-search"
git clone git://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search



# *************************************
# oh-my-zsh config files
#

log_section_start "Sym linking files from $FROM_FILES to $TARGET_DIR"

FROM_FILES="$CONFIG_DIR/oh-my-zsh/*"
TARGET_DIR=~/.oh-my-zsh/custom/
symlink_files "$FROM_FILES" "$TARGET_DIR"



# *************************************
# Other scripts

bash "$SCRIPTS_DIR/brew.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/mac.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/node.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/cask.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/code.sh" "$ROOT_DIR"
