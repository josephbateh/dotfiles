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
  docker
  google-chrome
  etcher
  firefox
  minecraft
  private-internet-access
  rocket
  spotify
  sublime-text
  sync
  synergy
  visual-studio-code
)

brew cask install "${apps[@]}"
