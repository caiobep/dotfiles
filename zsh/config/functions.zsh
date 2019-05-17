# LS on change pwd
chpwd() {
  exa
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}


# kill all processes of a certain type
function nuke {
    kill `ps aux | grep $1 | awk '{print $2}'`
}

function copy() {
    cat "$@" | pbcopy
}

function trash() {
    mv "$@" ~/.Trash
}

function ql() {
    qlmanage -p "$*" > /dev/null
}

function chrome() {
    open -a Google\ Chrome
}
