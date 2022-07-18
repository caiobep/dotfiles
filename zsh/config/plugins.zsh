#!/usr/bin/env zsh

if ! [ -f ~/.antigen.zsh ]; then
    curl -L git.io/antigen > ~/.antigen.zsh
    echo "Downloading antigen to ~/.antigen.zsh ..."
fi

source ~/.antigen.zsh

ANTIGEN=$HOME/.antigen/

# Load Oh-My-Zsh Library
antigen use oh-my-zsh

# Core Plugins
antigen bundle gnu-utils
antigen bundle tmux
antigen bundle globalalias
antigen bundle history
antigen bundle dircycle
antigen bundle colorize
antigen bundle encode64

# Security Tools Plugins
antigen bundle nmap

# Git Plugins
antigen bundle git
antigen bundle git-extras
antigen bundle git-remote-branch
antigen bundle github
antigen bundle gitignore

# Node Plugins
antigen bundle node
antigen bundle yarn
antigen bundle nvm

# ZSH Experience plugins
antigen bundle zsh-navigation-tools
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle hlissner/zsh-autopair
antigen bundle kutsan/zsh-system-clipboard

antigen apply

# Use Pure Theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

