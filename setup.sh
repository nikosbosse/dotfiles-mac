#!bin/bash

xcode-select --install

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ================================================
# set up git
git config --global user.name "nikosbosse"
git config --global user.email "nikosbosse@gmail.com"
# ================================================

# ================================================
# clone relevant repos
mkdir github-synced
cd github-synced
git clone https://github.com/nikosbosse/obsidian && cd obsidian && git checkout mac && cd ..
git clone https://github.com/nikosbosse/zotero-nikos
# ================================================

# ================================================
# install relevant apps
brew install --cask iterm2
brew install --cask keepassx
brew install --cask r
brew install --cask rstudio
brew install --cask arc 
brew install --cask brave-browser
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

# javascript
brew install node
brew install nvm

# other to dos 
#Enable Darkmode
#Enable Snap to grid in Finder
#Switch caps and Esc, switch fn and ctrl
# make screenshots save to clipboard
# update taskleiste to show F1, F2 by default
