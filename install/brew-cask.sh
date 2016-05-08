# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Not on brew-cask
# Mad catz
# Window Magnet
# Office (there is one, but I'm not sure I trust it)

# Install packages
apps=(
  cyberduck
  flux
  github-desktop
  google-chrome
  java
  slack
  sublime-text3
  virtualbox
  atom
  disk-inventory-x
  firefox
  github-desktop
  spotify
  steam
  vmware-fusion
  dropbox
)

brew cask install "${apps[@]}"
