brew cask install atom

# Globally install with apm

packages=(
  minimap
  autoclose-html
  git-control
  merge-conflicts
)

apm install "${packages[@]}" --production
