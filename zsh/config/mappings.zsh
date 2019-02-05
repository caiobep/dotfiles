
bindkey -v
export KEYTIMEOUT=1

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

function edit_and_run() {
    BUFFER="fc"
    zle accept-line
}
zle -N edit_and_run
bindkey "^v" edit_and_run

function code_pwd() {
   eval "/usr/local/bin/code $PWD"
}
zle -N code_pwd
bindkey "^/" code_pwd
