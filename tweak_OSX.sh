#!/bin/bash

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update
brew upgrade

brew install midnight-commander wget git git-flow curl ssh-copy-id gnupg tmux coreutils mutt nmap bash-completion

brew cask install iterm2
#brew cask install alfred dash dropbox google-drive sublime-text firefox google-chrome 
#brew cask install iterm2 xnviewmp imageoptim skype utorrent virtualbox vagrant audacity
#brew cask install evernote intellij-idea-ce rescuetime the-unarchiver sequel-pro texturepacker 
#brew cask install testflight

brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

#Voir les fichiers cachés
defaults write com.apple.finder AppleShowAllFiles TRUE

