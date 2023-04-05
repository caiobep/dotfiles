# Set default prefix
set-option -g prefix C-a

set -g set-titles on
set -g set-titles-string '#{pane_current_path}'
set-option -g automatic-rename on

# Default Terminal
set -g default-terminal "alacritty"

# Enable VIM keybindings in command mode
set-option -g mode-keys vi
set-option -g status-keys vi


# Time in milliseconds for which tmux waits after an escape.
set-option -g escape-time 0

# Start window numbers at 1 to match keybord
set-option -g base-index 1
set-option -g pane-base-index 1

# Renumber windows sequentially after closing any of them
set-option -g renumber-windows on

# Allow programs to change title using a escape sequence
set-option -g allow-rename on

# Dont show "Activity in window x" messages.
set-option -g visual-activity off

# Enable supported focus events
set-option -g focus-events on

# Switch off automatic window renaming
set-option -g automatic-rename off

# Terminal overrides
set-option -g -a terminal-overrides 'tmux-256color:Tc' # True color support

# Smart pane switching with awareness of Vim splits.
# See: https://github.com/christoomey/vim-tmux-navigator
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
bind-key -n C-h if-shell "$is_vim" "send-keys C-h"  "select-pane -L"
bind-key -n C-j if-shell "$is_vim" "send-keys C-j"  "select-pane -D"
bind-key -n C-k if-shell "$is_vim" "send-keys C-k"  "select-pane -U"
bind-key -n C-l if-shell "$is_vim" "send-keys C-l"  "select-pane -R"
bind-key -n C-\\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"
bind-key -T copy-mode-vi C-h select-pane -L
bind-key -T copy-mode-vi C-j select-pane -D
bind-key -T copy-mode-vi C-k select-pane -U
bind-key -T copy-mode-vi C-l select-pane -R
bind-key -T copy-mode-vi C-\\ select-pane -l
