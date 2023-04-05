[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf
export FZF_DEFAULT_COMMAND='fd --follow --hidden --exclude "(.git|Library|Music)" --color=always'

export FZF_DEFAULT_COLORS='--color=dark,fg:7,fg+:7,bg:0,bg+:8,hl:4,hl+:4,info:8,border:8,prompt:4,pointer:3,marker:3,spinner:8,header:6'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_COLORS \
  --ansi
	--inline-info \
	--height='40%' \
	--jump-labels='bmvenritusldkfjgh' \
	--bind='ctrl-f:jump-accept'"
export FZF_COMPLETION_OPTS='--preview="highlight --out-format=xterm256 --style=pablo {} 2>/dev/null || bat {}"'
export FZF_COMPLETION_TRIGGER="**"
export FZF_TMUX=1

export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND --type file --max-depth 8"
export FZF_ALT_C_COMMAND="fd --type d --glob '.git' ~/Developer -t d  --hidden --no-ignore  --follow"


_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    export|unset) fzf "$@" --preview "eval 'echo \$'{}";;
    ssh)          fzf "$@" --preview 'dig {}';;
    *)            fzf "$@" ;;
  esac
}


# Use CTRL-O instead of ALT_C
bindkey '^O' fzf-cd-widget

