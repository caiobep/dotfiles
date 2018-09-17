if command -v tmux > /dev/null; then
     [ -z $TMUX ] && exec tmux
else
    echo "Tmux not installed."
fi

# Update Settings
#(cd ~/.dotfiles && git pull && git submodule update --init --recursive)

foreach piece (
    aliases.zsh
    exports.zsh
    functions.zsh
    plugins.zsh
    mappings.zsh
) { source ~/.dotfiles/zsh/config/$piece }

