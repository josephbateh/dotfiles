# Joseph Bateh's dotfiles

Modified from Ben Diuguid's dotfiles: https://github.com/bendiuguid/dotfiles

## Overview

### Why dotfiles?
* dotfiles provide an easy solution for setting up your dev environment with one command.
* Backup, restore, and sync the prefs and settings for your toolbox. Your dotfiles might be the most important files on your machine.
* Learn from the community. Discover new tools for your toolbox and new tricks for the ones you already use.
* Share what you've learned with the rest of us.


### Installation
To install these dotfiles, simply clone this repo then cd into it and execute install.sh. You can also simply paste the following command into terminal, which switch the the home directory, clone the repo into .dotfiles/ and then run the install script with bash.


Copy and Paste into terminal: `cd ~/ && git clone https://github.com/josephbateh/dotfiles .dotfiles && cd .dotfiles && bash install.sh`

## File System

    ├── bin
    │   └── dotfiles                - Executable placed on path to provide update/sourcing
    │
    ├── git
    │   ├── .gitconfig              - Global git config, where user info and git alias's live
    │   └── .gitignore_global       - Global git ignore
    │
    └── install
    │   ├── atom.sh                 - Uses apm to install atom packages/themes
    │   ├── bash.sh                 - Gets bash/completions from brew and makes it default shell
    │   ├── brew-cask.sh            - Installs GUI apps
    │   ├── brew.sh                 - Installs command line apps
    │   ├── gem.sh                  - Installs useful gems
    │   ├── meteor.sh               - Installs meteor
    │   └── npm.sh                  - Globally installs useful npm packages
    │
    ├── osx
    │   ├── defaults.dock.sh        - Sets the Dock up
    │   └── defaults.sh             - Skinned down version of mathiasbynens/dotfiles/.osx
    │
    ├── runcom
    │   ├── .bash_profile           - Symlinked into ~/ controls the sourcing of everything
    │   ├── .gemrc                  - Symlinked into ~/ controls gem info
    │   └── .inputrc                - Symlinked into ~/ sets input info
    │
    ├── system
    │   ├── .alias                  - Shell Alias's
    │   ├── .completion             - Bash/brew and other completions
    │   ├── .env                    - Environmental variables
    │   ├── .function               - General useful bash functions
    │   ├── .function_fs            - File System specific functions
    │   ├── .nvm                    - Properly sources nvm
    │   ├── .path                   - Defines the path
    │   ├── .prompt                 - Bash logic for coloring / git status of prompt
    │   └── .rvm                    - Properly sources rvm
    │
