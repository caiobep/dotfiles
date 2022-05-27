set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'


# Keep Tmux Sessions
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @resurrect-strategy-nvim 'session'
set -g @resurrect-strategy-vim 'session'
set -g @resurrect-save 'A'
set -g @resurrect-restore 'R'


run '$HOME/.dotfiles/tmux/tpm/tpm'
