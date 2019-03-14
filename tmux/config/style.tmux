# Mode
set-option -g mode-bg brightblack
set-option -g mode-fg default

# Use top tabbar
set-option -g status-position top

# Status update interval
set-option -g status-interval 5

# Basic status bar colors
set-option -g status-bg default
set-option -g status-fg white

# Left side of status bar
set-option -g status-left-length 40
#set-option -g status-left '#[fg=white] #S '
set-option -g status-left ' 喝 '

# Window status
set-option -g window-status-format '#[fg=color252] #W '
set-option -g window-status-current-format '#[fg=brightwhite] #W '
set-option -g window-status-separator " "
set-option -g status-justify left

# Right side of status bar
set-option -g status-right-length 40
set-option -g status-right '#[fg=white]  %R #[fg=white,italics] #(whoami)@#h '

# Pane border
set-option -g pane-border-bg default
set-option -g pane-border-fg black
set-option -g pane-active-border-bg default
set-option -g pane-active-border-fg white

# Pane number indicator
set-option -g display-panes-colour brightblack
set-option -g display-panes-active-colour brightwhite

# Clock mode
set-option -g clock-mode-colour colour233
set-option -g clock-mode-style 24

# Message
set-option -g message-bg default
set-option -g message-fg default

# enable true color support and italics
set -g default-terminal "xterm-256color-italic"
set -ga terminal-overrides "xterm-256color-italic:Tc"
