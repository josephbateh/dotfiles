# Install mas
brew install mas

# Install packages
apps=(
  803453959 # Slack
  441258766 # Magnet
  497799835 # XCode
  409201541 # Pages
  408981434 # iMovie
  715768417 # Microsoft Remote Desktop
)

mas install "${apps[@]}"
