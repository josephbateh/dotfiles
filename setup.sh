#!/usr/bin/env zsh
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew tap mongodb/brew
brew tap linode/cli

# Install utilities
brew install awscli
brew install dockutil
brew install dotnet
brew install git
brew install glances
brew install htop
brew install influxdb
brew install telegraf
brew install linode-cli
brew install mas
brew install mongodb-community
brew install mono
brew install watch

# Install Casks
brew cask install aerial
brew cask install alfred
brew cask install atom
brew cask install cyberduck
brew cask install datagrip
brew cask install discord
brew cask install docker
brew cask install firefox
brew cask install gitkraken
brew cask install google-chrome
brew cask install intel-power-gadget
brew cask install istat-menus
brew cask install iterm2
brew cask install lastpass
brew cask install nextcloud
brew cask install rider
brew cask install sensiblesidebuttons
brew cask install spotify
brew cask install webstorm
brew cask install visual-studio-code

# Copy Configuration Files
yes | cp -rf telegraf.conf /usr/local/etc/

# Start Services
brew services start influxdb
brew services start telegraf
brew services start mongodb-community

# Install Mac App Store Apps
mas install 803453959    # Slack
mas install 441258766    # Magnet
mas install 409201541    # Pages
mas install 408981434    # iMovie

############
# SETTINGS #
############

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "athena"
sudo scutil --set HostName "athena"
sudo scutil --set LocalHostName "athena"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "athena"

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Require password x seconds after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool false

# Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Turn off guest user
defaults write com.apple.AppleFileServer guestAccess -bool NO
defaults write com.apple.smb.server AllowGuestAccess -bool NO

# Set text cursor speed to be reasonable (fast)
defaults write -g InitialKeyRepeat -int 15 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)