# htop
bind-key H \
	new-window -n htop htop \; \
	set-window-option allow-rename off \; \
	rename-window htop

# Cal
bind-key C \
	new-window -n cal \
		"gcal \
			--highlighting='\e[41m:\e[0m:\e[33m:\e[0m' \
			--pager \
			--starting-day=1 \
			--cc-holidays=TR \
			$(date +'%Y')" \; \
	set-window-option allow-rename off \; \
	rename-window cal

