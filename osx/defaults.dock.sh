#!/bin/sh

# Applications
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/App Store.app"
dockutil --no-restart --add "/Applications/Firefox.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/Trello.app"
dockutil --no-restart --add "/Applications/Notes.app"
dockutil --no-restart --add "/Applications/Reminders.app"
dockutil --no-restart --add "/Applications/Photos.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/Applications/GitKraken.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Utilities/Activity Monitor.app"
dockutil --no-restart --add "/Applications/System Preferences.app"

# Folders
dockutil --no-restart --add '~/Downloads' --view grid --display folder --section others

killall Dock
