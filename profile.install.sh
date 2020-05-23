#!/bin/bash -ex
DIRECTORY=$(pwd)

# Create Symlink
ln -sfv "$DIRECTORY/.jprofile" ~

# Add Source Per OS
case "$(uname -s)" in
  Darwin)
    touch ~/.zshrc
    echo -e "\n# Source Custom Profile\nsource ~/.jprofile" >> ~/.zshrc
    ;;

  Linux)
    touch ~/.bashrc
    echo -e "\n# Source Custom Profile\nsource ~/.jprofile" >> ~/.bashrc
    ;;

  *)
    echo 'Not running on MacOS or Linux' 
    ;;
esac