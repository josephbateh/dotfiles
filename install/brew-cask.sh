# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
  atom
  cyberduck
  discord
  disk-inventory-x
  gitkraken
  google-chrome
  dropbox
  etcher
  firefox
  java
  microsoft-office
  minecraft
  rocket
  spotify
  sublime-text
  synergy
  texshop
  tunnelbear
  virtualbox
  visual-studio-code
  vmware-fusion
)

brew cask install "${apps[@]}"
