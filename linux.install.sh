#!/bin/bash -ex

# Get sudo
sudo -v

# Install Profiles
bash -ex profile.install.sh

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Applications
sudo apt install -y htop
sudo apt install -y lsof
sudo apt install -y nano

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm i v12

# Setup Git
git config --global user.name "Joseph Bateh"
git config --global user.email "github@josephbateh.com"

