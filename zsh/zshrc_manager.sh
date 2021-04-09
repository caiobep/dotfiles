
# Update Settings
#(cd ~/.dotfiles && git pull && git submodule update --init --recursive)

foreach piece (
    exports.zsh
    functions.zsh
    plugins.zsh
    mappings.zsh
    aliases.zsh
) { source ~/.dotfiles/zsh/config/$piece }


if command -v tmux &> /dev/null&& [ -z "$TMUX" ]; then
    exec tmux new -A -s $MACHINE_NAME
fi

