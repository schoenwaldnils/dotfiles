#!/usr/bin/env sh

echo "#############################"
echo "# Installing extensions VSCode extensions"
echo "#############################"
echo ""

ROOT_DIR=$1
CONFIG_DIR="$ROOT_DIR/config"

# installing VS Code sync extension
code --install-extension shanalikhan.code-settings-sync
