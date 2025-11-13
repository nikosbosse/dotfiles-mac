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
git config --global fetch.prune true
git config --global rerere.enabled true
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
brew install --cask zen # alternative browser
brew install --cask brave-browser
# brew install --cask alt-tab # preview windows
brew install --cask dropbox
brew install --cask google-drive
brew install --cask obsidian
brew install --cask zotero
brew install --cask zoom
brew install --cask google-cloud-sdk
brew install --cask anki
brew install --cask slack
brew install --cask cursor
brew install --cask rectangle # push windows into different corners
defaults write $(osascript -e 'id of app "Cursor"') ApplePressAndHoldEnabled -bool false # for VIM mode, allow hold key down to be repeated keystrokes
brew install --cask aldente # battery management
brew install --cask docker
brew install --cask grammarly-desktop
brew install --cask warp # nicer terminal with AI stuff
brew install pre-commit
brew install gh
brew install pandoc
# brew install --cask amethyst (see https://github.com/ianyh/Amethyst)
brew install tmux
brew install tree
brew install htop
brew install wget
brew install --cask mactex # guide: https://mathjiajia.github.io/vscode-and-latex/
alias tlmgr='/Library/TeX/texbin/tlmgr' # alias, suggested by claude
export PATH="/Library/TeX/texbin:$PATH" # Add this to ensure TeX Live commands use the MacTeX installation
brew install --cask audacity # Musikprogramm
brew install ffmpeg
brew install poetry #pacakge management for python
brew install uv #package management for python
brew install pipx #package manager to install python packages globally, but somehow still separated in its own environemnt. Necessary for running R in vscode
pipx ensurepath
#sudo pipx ensurepath --global # optional to allow pipx actions with --global argument
brew install --cask raycast # replaces the regular Spotlight. Also need to update the hotkey from Option+Space to Command+Space
brew install --cask flameshot # screenshot tool -> need to set up hotkey
brew install stats # show cpu stats at the top bar
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

brew install zsh-autosuggestions
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install zsh-syntax-highlighting
echo 'source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc

# make time appear in terminal before a command
echo 'PROMPT="[%D{%H:%M:%S}] $PROMPT"' >> ~/.zshrc

# backsearch in terminal
echo 'bindkey "^R" fzf-history-widget' >> ~/.zshrc


# shortcut to clean repos
echo "alias cleanbranches='git fetch -p && git branch -r | awk '\''{print \$1}'\'' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '\''{print \$1}'\'' | xargs git branch -d'" >> ~/.zshrc

echo "alias Cleanbranches='git fetch -p && git branch -r | awk '\''{print \$1}'\'' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '\''{print \$1}'\'' | xargs git branch -D'" >> ~/.zshrc

echo "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
# ================================================

# ================================================
# set up cursor
# need to install radian using pipx for R
# need to download synced extensions. The necessary cursor extension is called "Settings Sync" (by Shan). The relevant gist is https://gist.github.com/nikosbosse/4ebe00c271d1e275df6c3055d8fc8fda.
# the keyboard shortcut to download settings is SHIFT + OPTION + D (upload is SHIFT + Option + D)
# ================================================

# other to dos
#Enable Darkmode in settings
#Enable Snap to grid in Finder: Right click in finder, go to show view options, sort, and then save as default.
#Switch caps and Esc, switch fn and ctrl
# make screenshots save to clipboard
# update taskbar to show F1, F2 by default
# change mac input source from `British` to `ABC`
