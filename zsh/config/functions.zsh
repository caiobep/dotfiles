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

ggi() {
  git init
  mit
  git add .
  git commit -m "Init"
  git remote add origin $(osascript -e 'tell application "Safari" to return URL of front document')
  git push -u origin master
}


mit() {
  license-up mit Caio Amaral Corrêa https://github.com/caiobep
  git add LICENSE
}

ggs() {
  git add .
  git commit . -nv &&
  git push
}

gll(){
   git clone "$(pbpaste)"
}

re(){
  mv "$1" ~/.Trash
}

function npm_install {
    if [ -f yarn.lock ]; then
        yarn install $@
    else
        npm install $@
    fi
    touch ./node_modules/.metadata_never_index # Prevent Spotlight from indexing node modules folder
}

alias npmi=npm_install
