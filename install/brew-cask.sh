# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
  boinc
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
  sublime-text
  toggldesktop
  tunnelbear
  virtualbox
  visual-studio-code
  vmware-fusion
)

brew cask install "${apps[@]}"
