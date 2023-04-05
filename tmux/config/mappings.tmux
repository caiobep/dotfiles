# Unbind default prefix (No body uses it anyway)
unbind-key C-b

# Bind 'C-a C-a' to send 'C-a'
bind-key C-a send-prefix
set-option -g prefix C-a
#set-option -g prefix2 `


bind-key -n C-b send-prefix

# Reload configuration
bind-key r \
          source-file ~/.dotfiles/tmux/tmux.conf \; \
          display-message '(! ~/.dotfiles/tmux/tmux.conf reloaded.'

# Switch windows
bind-key -n S-n select-window -t :- # Previous Window
# bind-key -n S-N select-window -t :+ # Previous Window
# bind-key -n S-N select-window -t :+ # Previous Window
# bind-key -n M-N select-window -t :- # Previous Window
# bind-key -n M-n select-window -t :+ # Next Window

# Toggle Zoom
bind-key -n M-z resize-pane -Z

# Split pane with same directory
bind-key - split-window -v -c '#{pane_current_path}'
bind-key \\ split-window -h -c '#{pane_current_path}'
bind-key _ split-window -fv -c '#{pane_current_path}' # Full Width
bind-key | split-window -fh -c '#{pane_current_path}'  # Full Height

# Resize Panes
#bind-key -n M-H resize-pane -L 7
#bind-key -n M-J resize-pane -D 1
#bind-key -n M-K resize-pane -U 1
#bind-key -n M-L resize-pane -R 2

# vim-like pane resizing
bind -r C-k resize-pane -U
bind -r C-j resize-pane -D
bind -r C-h resize-pane -L
bind -r C-l resize-pane -R

# Move panes
#unbind-key {
#unbind-key }
bind-key -r H swap-pane -U
bind-key -r L swap-pane -D

# Pane Navigation
bind -r h select-pane -L  # move left
bind -r j select-pane -D  # move down
bind -r k select-pane -U  # move up
bind -r l select-pane -R  # move right
bind > swap-pane -D       # swap current pane with the next one
bind < swap-pane -U       # swap current pane with the previous one


# Kill panes without prompt
bind-key -n C-x kill-pane

# Swap windows across themselves
bind-key -r '<' swap-window -t -1
bind-key -r '>' swap-window -t +1
bind -r J select-window -t :-
bind -r N select-window -t :-
bind -r K select-window -t :+

# Kill windows without prompt.
unbind-key &
bind-key x kill-window

# Enter copy mode
unbind-key [
bind Escape copy-mode

# Select
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi V send-keys -X select-line
bind-key -T copy-mode-vi C-v send-keys -X retangle-toggle

# Copy
bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'pbcopy' # Copy to system clipboard.
bind-key -T copy-mode-vi Y send-keys -X copy-pipe-and-cancel 'pbcopy; tmux paste-buffer -s ""' # Copy and paste immediately to shell prompt.

# Paste
unbind-key ]
bind-key p paste-buffer -s '' # Paste without CR feed.
unbind-key =
bind-key P choose-buffer "paste-buffer -b '%%' -s ''"

# Search
bind-key -T copy-mode-vi / command-prompt -i -p '/' 'send-keys -X search-forward-incremental "%%%"'
bind-key -T copy-mode-vi ? command-prompt -i -p '?' 'send-keys -X search-backward-incremental "%%%"'

# Jump search mode with prefix.
bind-key / copy-mode \; send-keys '/'
bind-key ? copy-mode \; send-keys '?'

# Quickly navigate up and down in visual mode.
bind-key -T copy-mode-vi K \
	send-keys -X cursor-up \; \
	send-keys -X cursor-up \; \
	send-keys -X cursor-up \; \
	send-keys -X cursor-up \; \
	send-keys -X cursor-up \;
bind-key -T copy-mode-vi J \
	send-keys -X cursor-down \; \
	send-keys -X cursor-down \; \
	send-keys -X cursor-down \; \
	send-keys -X cursor-down \; \
	send-keys -X cursor-down \;



# control+e calls tmux-sessionizer in a new temporary window
bind-key -n C-e new-window -n sessionizer -c /tmp -F '#{window_index}' 'tmux-sessionizer'

