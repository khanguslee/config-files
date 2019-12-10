#! /bin/bash

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Install my brew packages
echo "  Installing brew packages."
brew install wget
brew install git
brew install python
brew install ant
brew install maven
brew install tldr
brew install go
brew install zsh
brew install yarn

# Install my cask packages
echo "  Installing cask packages."
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install spectacle
brew cask install iterm2
brew cask install spotify
brew cask install onedrive
brew cask install slack

# Set git alias
echo "  Setting git aliases."
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.adog "log --all --decorate --oneline --graph"

# Install others
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
