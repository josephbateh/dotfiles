#!/usr/bin/env zsh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install utilities
brew install dockutil
brew install git
brew install mas

# Install Casks
brew cask install aerial
brew cask install alfred
brew cask install atom
brew cask install cyberduck
brew cask install discord
brew cask install docker
brew cask install firefox
brew cask install google-chrome
brew cask install intel-power-gadget
brew cask install istat-menus
brew cask install iterm2
brew cask install lastpass
brew cask install sensiblesidebuttons
brew cask install spotify
brew cask install visual-studio-code

# Install Mac App Store Apps
mas install 803453959 # Slack
mas install 441258766 # Magnet
mas install 409201541 # Pages
mas install 408981434 # iMovie
mas install 1477385213 # Save To Pocket
