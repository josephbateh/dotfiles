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
  docker
  etcher
  firefox
  gitkraken
  google-chrome
  intel-power-gadget
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
