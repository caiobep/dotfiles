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
  ~/.local/bin
	$path
)


# Set path for local scripts.
path=($path $HOME/.bin{,/external})

# Term
export TERM='xterm-256color'

# Default Editors
export EDITOR=$(find_alternative nvim lvim vim vi) 
export EDITOR="nvim"
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

  # GOLANG
  export GOPATH=$HOME/.go
  export GOROOT=/opt/homebrew/opt/go/libexec
  export PATH=$PATH:$GOPATH/bin
  export PATH=$PATH:$GOROOT/bin

  # Homebrew's zsh autocompletion
  [ -s "/opt/homebrew/share/zsh/site-functions" ] && . "/opt/homebrew/share/zsh/site-functions"  

  # NVM 
  export NVM_DIR="$HOME/.cache/nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

  # PNPM
  export PNPM_HOME="/Users/caiobep/.local/share/pnpm"
  export PATH="$PNPM_HOME:$PATH"

  # Java
  export PATH="/opt/homebrew/opt/openjdk/bin:$PATH" 

  # Bun
  export BUN_INSTALL="/Users/caiobep/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
  [ -s "/Users/caiobep/.bun/_bun" ] && source "/Users/caiobep/.bun/_bun" # Bun completions

} elif [[ $(uname -o) == 'Android' ]] 2>/dev/null {
	# Shell variable
	export SHELL=$(which zsh)

	# Local scripts
	path=($HOME/.termux/bin $path)
}

