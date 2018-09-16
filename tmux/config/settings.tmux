# Set default prefix
set-option -g prefix C-a

# Default Terminal
set-option -g default-terminal "screen-256color"

# Enable VIM keybindings in command mode
set-option -g mode-keys vi
set-option -g status-keys vi

# Mouse Support
set-option -g mouse on

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
set-option -g visual activity off

# Enable supported focous events
set-option -g focous-events on

# Switch off automatic window renaming
set-option -g automatic-rename off

# Terminal overrides
set-option -g -a terminal-overrides ',xterm-256color:Tc' # True color support

