# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Not on brew-cask
# Mad catz
# Window Magnet
# Slack (it is on brew-cask, but I prefer to install it from the Mac App Store)
# XCode
# iWork

# Install packages
apps=(
  cyberduck
  disk-inventory-x
  gitkraken
  google-chrome
  dropbox
  etcher
  firefox
  flux
  java
  microsoft-office
  minecraft
  owncloud
  spotify
  steam
  sublime-text3
  toggldesktop
  tunnelbear
  virtualbox
  visual-studio-code
  vmware-fusion
)

brew cask install "${apps[@]}"
