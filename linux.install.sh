#!/bin/bash -ex

# Get sudo
sudo -v

# Install Profiles
bash -ex profile.install.sh

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Install Applications
sudo apt install -y htop lsof nano

# Install NVM
wget -q -O- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm i v22

# Setup Git
git config --global user.name "Joseph Bateh"
git config --global user.email "github@josephbateh.com"

# Install .NET Core
version=$(lsb_release -cs)

if [ "$version" == "noble" ]; then
  wget https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  rm -rf packages-microsoft-prod.deb
  sudo apt update
  sudo apt install -y apt-transport-https
  sudo apt update
  sudo apt install -y dotnet-sdk-8.0
elif [ "$version" == "jammy" ]; then
  wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  rm -rf packages-microsoft-prod.deb
  sudo apt update
  sudo apt install -y apt-transport-https
  sudo apt update
  sudo apt install -y dotnet-sdk-6.0
  sudo apt install -y dotnet-sdk-7.0
  sudo apt install -y dotnet-sdk-8.0
elif [ "$version" == "focal" ]; then
  wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  rm -rf packages-microsoft-prod.deb
  sudo apt update
  sudo apt install -y apt-transport-https
  sudo apt update
  sudo apt install -y dotnet-sdk-3.1
  sudo apt install -y dotnet-sdk-6.0
  sudo apt install -y dotnet-sdk-7.0
elif [ "$version" == "bionic" ]; then
  wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  rm -rf packages-microsoft-prod.deb
  sudo apt update
  sudo apt install -y apt-transport-https
  sudo apt update
  sudo apt install -y dotnet-sdk-3.1
  sudo apt install -y dotnet-sdk-6.0
  sudo apt install -y dotnet-sdk-7.0
else
  echo ".NET Core not installed."
fi

# Install Java
sudo apt install -y default-jdk

# Install Fuzzy Finder
sudo apt install fzf
