# Mode
set-option -g mode-style bg=brightblack,fg=default

# Use top tabbar
set-option -g status-position top

# Status update interval
set-option -g status-interval 5

# Basic status bar colors
set-option -g status-style bg=default,fg=white

# Left side of status bar
set-option -g status-left-length 40
#set-option -g status-left '#[fg=white] #S '
set-option -g status-left ' ▲  '

# Window status
set-option -g window-status-format '#[fg=colour249] #W '
set-option -g window-status-current-format '#[fg=brightwhite] #W '
set-option -g window-status-separator " "
set-option -g status-justify left

# Right side of status bar
set-option -g status-right-length 40
set-option -g status-right '#[fg=colour240]#(pgrep -f Docker.app > /dev/null && echo " ") #[fg=colour240]#(false && echo "  ")  #(launchctl list | grep --invert-match "apple" | wc -l | xargs -I _ echo " _")#[fg=colour240]#(pgrep Amethyst HazeOver > /dev/null && echo "  ") %R  #[italics]#S '


# Pane border
set-option -g pane-border-style  bg=default,fg=black
set-option -g pane-active-border-style bg=default,fg=white

# Pane number indicator
set-option -g display-panes-colour brightblack
set-option -g display-panes-active-colour brightwhite

# Clock mode
set-option -g clock-mode-colour colour233
set-option -g clock-mode-style 24

# Message
set-option -g message-style bg=default,fg=default

# enable true color support and italics
set -g default-terminal "alacritty"
set -ga terminal-overrides "tmux-256color:Tc"

