# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

binaries=(
  dockutil
  git
  mas
  yarn
)

brew install "${binaries[@]}"

brew cleanup
