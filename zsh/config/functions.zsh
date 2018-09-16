# LS on change pwd 
chpwd() {
  ls
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}


# kill all processes of a certain type
function nuke {
    kill `ps aux | grep $1 | awk '{print $2}'`
}
