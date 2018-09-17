foreach piece (
	aliases.zsh
	exports.zsh
	functions.zsh
	plugins.zsh
    mappings.zsh
) { source ~/.dotfiles/zsh/config/$piece }
