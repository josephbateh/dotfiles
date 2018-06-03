# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
  aerial
  alfred
  atom
  cyberduck
  discord
  disk-inventory-x
  gitkraken
  docker
  google-chrome
  etcher
  firefox
  istat-menus
  iterm2
  minecraft
  rocket
  spotify
  sublime-text
  sync
  synergy
  visual-studio-code
)

brew cask install "${apps[@]}"
