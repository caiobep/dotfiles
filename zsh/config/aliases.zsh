# Core Aliases
alias please="sudo"
alias grep="grep --color=auto"
alias du="du --max-depth=1 --si"
alias pcat="pygmentize -O style=borland -f console256 -g"

alias rm="trash" # Use trash program instead of permantly removing
alias mv='mv -i -v' # Move nodes with interactive
alias cp='cp -i -v' # Copy nodes with interactive mode
alias ln='ln -i -v'
alias mkdir='mkdir -p'
alias du='du --max-depth=1 --si'
alias df='df --all --si --print-type'
alias tmp='command mkdir --parents --verbose $TMPDIR/$(whoami) && cd $TMPDIR/$(whoami)'
alias jq='jq --tab --indent 4'
alias td='todoist'

# Custom Shortcuts
alias sayl="say -v luciana "
alias sayf="say -v felipe "
alias t='task'om
alias dfc='dfc -dmT' # -d: Show used size. -m: Base 10 output. -T: Show file system types.
alias cdu='cdu --intelligent --log --reverse --sort --du h'
alias syncthing='syncthing -home=$HOME/.config/syncthing' # Decentralized Syncing
alias la='exa --color=always --all --classify --group-directories-first --long --git --group' # Like LS but better
alias news='newsboat --quiet'
alias def='sdcv --color'
alias note="$EDITOR +'cd ~/.notes/' ~/.notes/index.md"
alias myip='curl http://checkip.amazonaws.com'

# Wow such git
alias such=git
alias very=git
alias wow='git status'
alias gl='git log \
	--graph \
	--abbrev-commit \
	--decorate \
	--format=format:"%C(yellow)%h%C(reset) %C(white)%s%C(reset) %C(blue)<%an>%C(reset)%C(bold yellow)%d%C(reset) %C(black)%ar%C(reset)" \
	--all'
alias glt='git log \
	--graph \
	--abbrev-commit \
	--decorate \
	--format=format:"%C(bold black)%ad%C(reset) %C(yellow)%h%C(reset) %C(white)%s%C(reset) %C(blue)<%an>%C(reset)%C(bold yellow)%d%C(reset) %C(black)%ar%C(reset)" \
	--date=format:"%Y-%m-%d %H:%M" \
	--all'
alias cal="gcal \
	--highlighting='\e[41m:\e[0m:\e[33m:\e[0m' \
	--pager \
	--starting-day=1 \
	--cc-holidays=TR \
	\$(date +'%Y')"
alias search="rg \
	--color='always' \
	--heading \
	--line-number \
	--no-messages \
	--no-ignore \
	--hidden \
	--follow \
	--smart-case \
	--glob '!.git/' \
	--glob '!node_modules/' \
	--regexp"
