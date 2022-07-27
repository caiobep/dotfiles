require("toggleterm").setup({
	on_config_done = nil,
	size = 80,
	open_mapping = [[<c-t>]],
	hide_numbers = true,
	shade_terminals = true,
	shading_factor = 1,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = false,
	direction = "float",
	close_on_exit = true,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	}
})
