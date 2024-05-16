#!bin/bash

xcode-select --install

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ================================================
# install relevant apps
brew install --cask iterm2
brew install --cask keepassx
brew install --cask r
brew install --cask rstudio
brew install --cask arc 
brew install --cask dropbox
brew install --cask google-drive
brew install --cask obsidian
brew install --cask zotero
brew install --cask zoom
brew install --cask google-cloud-sdk
brew install --cask anki
brew install --cask slack
brew install --cask cursor
brew install --cask docker
brew install pre-commit
brew install gh
brew install pandoc
# brew install --cask amethyst (see https://github.com/ianyh/Amethyst)
# ================================================

# ================================================
# shell setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install tmux
brew install tree
brew install htop
brew install wget
# ================================================

# ================================================
# python 
brew install python
brew install pipenv
echo 'alias python=python3' >> ~/.zshrc
echo 'alias pip=pip3' >> ~/.zshrc
# ================================================

# other to dos 
#Enable Darkmode
#Enable Snap to grid in Finder
#Switch caps and Esc, switch fn and ctrl

