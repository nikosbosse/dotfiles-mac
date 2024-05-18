#!bin/bash

xcode-select --install

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/nikos/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# ================================================
# set up git
git config --global user.name "nikosbosse"
git config --global user.email "nikosbosse@gmail.com"
git config --global push.autoSetupRemote true

mkdir -p ~/hooks
touch ~/hooks/.pre-commit
cat << 'EOF' >> ~/hooks/.pre-commit
#!/bin/bash
branch='$(git rev-parse --abbrev-ref HEAD)'
if [ "$branch" = "main" ]; then
  echo "You can't commit directly to main. Bad boy!"
  exit 1
fi
EOF
chmod +x ~/hooks/.pre-commit
git config --global core.hooksPath ~/hooks
# ================================================

# ================================================
# clone relevant repos
git clone https://github.com/nikosbosse/obsidian && cd obsidian && git checkout mac && cd ..
git clone https://github.com/nikosbosse/zotero-nikos
# ================================================

# ================================================
# install relevant apps
brew install --cask iterm2
brew install --cask keepassxc
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

# ================================================
# javascript
brew install node
brew install nvm
# ================================================

# ================================================
# shell setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'set -o vi' >> ~/.zshrc
# ================================================

# other to dos 
#Enable Darkmode
#Enable Snap to grid in Finder
#Switch caps and Esc, switch fn and ctrl
# make screenshots save to clipboard
# update taskleiste to show F1, F2 by default
