# Install mas
brew install mas

# Install packages
apps=(
  803453959 # Slack
  441258766 # Magnet
  409201541 # Pages
  408981434 # iMovie
)

mas install "${apps[@]}"
