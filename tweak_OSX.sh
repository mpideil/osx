#!/bin/bash

if [ command -v brew &> /dev/null ]; then
  echo "brew already installed"
else
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

echo "updating brew ..."
brew update
brew upgrade
brew upgrade brew-cask

echo "try to install brew stuff"
brew install midnight-commander wget git git-flow curl ssh-copy-id gnupg tmux coreutils mutt nmap bash-completion

brew cask install iterm2
#brew cask install alfred dash dropbox google-drive sublime-text firefox google-chrome 
#brew cask install iterm2 xnviewmp imageoptim skype utorrent virtualbox vagrant audacity
#brew cask install evernote intellij-idea-ce rescuetime the-unarchiver sequel-pro texturepacker 
#brew cask install testflight

brew cleanup && brew cask cleanup

echo "set hide file fiewable"
defaults write com.apple.finder AppleShowAllFiles TRUE

echo "setting shell"

#wget https://raw.githubusercontent.com/Clovis-team/clovis-open-code-extracts/master/utils/Clovis-iTerm2-Color-Scheme.itermcolors
#exec https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes

brew install zsh zsh-completions
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" done in chsh

#view https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961

if [ -ne ~/.zsh ];then
  echo "zsh dont exists install it"
  brew install zsh zsh-completions
  cp .
fi




echo "To change to zsh :"
echo ""
echo "chsh -s $(grep /zsh$ /etc/shells | tail -1)"
echo ""
