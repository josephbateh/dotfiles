# Install mas
brew install mas

# Search apps
mas search appname

# Slack: 803453959
# Magnet: 441258766
# XCode: 497799835
# Pages: 409201541
# iMovie: 408981434
# Microsoft Remote Desktop: 715768417
# Notability: 736189492

# Install packages
apps=(
  803453959
  441258766
  497799835
  409201541
  408981434
  715768417
  736189492
)

mas install "${apps[@]}"
