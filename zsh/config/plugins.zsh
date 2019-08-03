#!/usr/bin/env zsh

if ! [ -f ~/.antigen.zsh ]; then
    curl -L git.io/antigen > ~/.antigen.zsh
    echo "Downloading antigen to ~/.antigen.zsh ..."
fi

source ~/.antigen.zsh

ANTIGEN=$HOME/.antigen/

# Load Oh-My-Zsh Library
antigen use oh-my-zsh

# Load a Theme
# As recommended by pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Core Plugins
antigen bundle gnu-utils
antigen bundle tmux
antigen bundle globalalias
antigen bundle history
antigen bundle dircycle
antigen bundle colorize
antigen bundle encode64

# Git Plugins
antigen bundle git
antigen bundle git-extras
antigen bundle git-remote-branch
antigen bundle github
antigen bundle gitignore

# Node Plugins
antigen bundle nmap
antigen bundle node

# Python Plugins
antigen bundle pyenv
antigen bundle pip
antigen bundle python
antigen bundle pylint

# GO
antigen bundle go

# Clojure's Leinigen
antigen bundle lein

# ZSH Experience plugins
antigen bundle zsh_reload
antigen bundle zsh-navigation-tools
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle hlissner/zsh-autopair
antigen bundle kutsan/zsh-system-clipboard

antigen theme iam4x/zsh-iterm-touchbar

antigen apply

