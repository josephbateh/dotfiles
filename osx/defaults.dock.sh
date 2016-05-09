#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/App Store.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "$HOME/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/Notes.app"
dockutil --no-restart --add "/Applications/Reminders.app"
dockutil --no-restart --add "/Applications/Photos.app"
dockutil --no-restart --add "/Applications/Pages.app"
dockutil --no-restart --add "/Applications/Microsoft Word.app"
dockutil --no-restart --add "$HOME/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "/Applications/Preview.app"
dockutil --no-restart --add "$HOME/Applications/VMware Fusion.app"
dockutil --no-restart --add "$HOME/Applications/Atom.app"
dockutil --no-restart --add "$HOME/Applications/GitHub Desktop.app"
dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/Applications/Utilities/Activity Monitor.app"
dockutil --no-restart --add "/Applications/System Preferences.app"

dockutil --no-restart --add '~/Dropbox' --view grid --display folder --section others
dockutil --no-restart --add '~/Dropbox/Downloads' --view grid --display folder --section others

killall Dock
