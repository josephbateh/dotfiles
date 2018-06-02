#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR #EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Install
read -n1 -p "Install brew, zsh, brew-cask, and mas-cli? [y,n]: " doit
echo ""
if [ $doit == "y" ]; then
  echo "Installing brew, zsh, brew-cask, and mas-cli."
  . "$DOTFILES_DIR/install/install.sh"
else
  echo "Not installing brew, zsh, brew-cask, or mas-cli"
fi

# Settings
read -n1 -p "Update settings? [y,n]: " doit
echo ""
if [ $doit == "y" ]; then
  echo "Updating settings."
  . "$DOTFILES_DIR/macos/defaults.sh"
  . "$DOTFILES_DIR/macos/defaults.dock.sh"
else
  echo "Not updating settings."
fi

# Symlink profiles
read -n1 -p "Update symlink profiles? [y,n]: " doit
echo ""
if [ $doit == "y" ]; then
  echo "Updating symlink profiles."
  ln -sfv "$DOTFILES_DIR/symlink/.gitconfig" ~
  ln -sfv "$DOTFILES_DIR/symlink/.zprofile" ~
  ln -sfv "$DOTFILES_DIR/symlink/.zshenv" ~
  ln -sfv "$DOTFILES_DIR/symlink/.zshrc" ~  
else
  echo "Not updating symlink profiles."
fi
