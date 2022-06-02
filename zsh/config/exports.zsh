ZSH_THEME="materialshell"

# Utility function to return the first installed binary for given executables.
function find_alternative() {
	local i=''

	foreach i ($*) {
		if (hash "$i" &>/dev/null) {
			echo "$i"
			return 0
		}
	}
}

# Initialize $PATH with system binaries.
path=(
	/usr/local/bin
	/usr/local/sbin
	/usr/bin
	/bin
	/usr/sbin
	/sbin
	$path
)

# Platform specific variables.
if [[ $(uname) == 'Darwin' ]] {
	# coreutils
	export GNU_COREUTILS_HOME='/usr/local/opt/coreutils/libexec/gnubin'
	export GNU_COREUTILS_MAN_HOME='/usr/local/opt/coreutils/libexec/gnuman'
	path=($GNU_COREUTILS_HOME $path)
	manpath=($GNU_COREUTILS_MAN_HOME $manpath)

	# findutils
	export GNU_FINDUTILS_HOME='/usr/local/opt/findutils/libexec/gnubin'
	export GNU_FINDUTILS_MAN_HOME='/usr/local/opt/findutils/libexec/gnuman'
	path=($GNU_FINDUTILS_HOME $path)
	manpath=($GNU_FINDUTILS_MAN_HOME $manpath)

	# curl
	export CURL_HOME='/usr/local/opt/curl/bin'
	export CURL_MAN_HOME='/usr/local/opt/curl/share/man'
	path=($CURL_HOME $path)
	manpath=($CURL_MAN_HOME $manpath)

	# Android SDK
	export ANDROID_HOME="$HOME/Library/Android/sdk"
	path=($path $ANDROID_HOME/{tools,platform-tools})

	# Java Development Kit
  #	export JAVA_HOME=$(/usr/libexec/java_home)

  ## Homebrew
  if [[ `uname -m` == 'arm64' ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
  fi

} elif [[ $(uname -o) == 'Android' ]] 2>/dev/null {
	# Shell variable
	export SHELL=$(which zsh)

	# Local scripts
	path=($HOME/.termux/bin $path)
}

# Set path for local scripts.
path=($path $HOME/.bin{,/external})

# Term
export TERM='xterm-256color'

# Default Editors
export EDITOR=$(find_alternative nvim lvim vim vi) 
export GUI_EDITOR=$(find_alternative webstorm code atom)

# Default Pager
export PAGER='less'

# Browser
export BROWSER=$(find_alternative open google-chrome xdg-open)

# Default Config and Cache Home
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Locale
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

# # man
# export MANWIDTH='100' # Fixed line width for man pages
# 	if ([[ $(uname -o) == 'Android' ]] 2>/dev/null) { MANWIDTH='50' }
# export MANPAGER="nvim +'set filetype=man' -"
# 	if ([[ $(uname -o) == 'Android' ]] 2>/dev/null) { unset MANPAGER }

# GO
export GOPATH=$HOME/.go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# node
export NODE_REPL_HISTORY="$HOME/.node/nodereplhistory"

# npm
export NPM_CONFIG_INIT_AUTHOR_NAME='Caio Amaral Corrêa'
export NPM_CONFIG_INIT_AUTHOR_EMAIL='caiobep@me.com'
export NPM_CONFIG_INIT_AUTHOR_URL='https://github.com/caiobep'
export NPM_CONFIG_INIT_LICENSE='MIT'
export NPM_CONFIG_INIT_VERSION='0.0.0'
export NPM_CONFIG_SAVE_PREFIX='~'
export NPM_CONFIG_SIGN_GIT_TAG='true'

# GnuPG
export GPG_TTY=$(tty)

# sdcv
export SDCV_PAGER='fold -s -w 100 | less'

# Clear utility function.
unset -f find_alternative


## NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# fzf
export FZF_DEFAULT_COMMAND="rg \
	--files \
	--no-messages \
	--no-ignore \
	--hidden \
	--follow \
	--ignore-case \
	--glob '!{.git,node_modules}/*'"
export FZF_DEFAULT_COLORS='--color=dark,fg:7,fg+:7,bg:0,bg+:8,hl:4,hl+:4,info:8,border:8,prompt:4,pointer:3,marker:3,spinner:8,header:6'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_COLORS \
	--exact \
	--no-bold \
	--inline-info \
	--height='40%' \
	--jump-labels='bmvenritusldkfjgh' \
	--bind='ctrl-f:jump-accept'"
export FZF_COMPLETION_OPTS='--preview="highlight --out-format=xterm256 --style=pablo {} 2>/dev/null || cat {}"'

## FZF Keybindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
