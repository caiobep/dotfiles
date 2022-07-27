local telescope         = require("telescope")
local telescopeSettings = {
	defaults = {
		prompt_prefix = " ",
		selection_caret = " ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "descending",
		layout_strategy = "horizontal",
		layout_config = {
			width = 0.75,
			preview_cutoff = 120,
			horizontal = {
				preview_width = function(_, cols, _)
					if cols < 120 then
						return math.floor(cols * 0.5)
					end
					return math.floor(cols * 0.6)
				end,
				mirror = false,
			},
			vertical = { mirror = false },
		},
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
			"--hidden",
			"-uu",
		},
		file_ignore_patterns = { "node_modules" },
		path_display = { shorten = 5 },
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		set_env = { ["COLORTERM"] = "truecolor" },
	},

	pickers = {
		find_files = {
			hidden = true,
		},
		live_grep = {
			only_sort_text = true,
			hidden = true,
		},
	},

	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
}


telescope.setup(telescopeSettings)

require("telescope").load_extension = "fzf"


local telescopeFunctions = require("telescope.builtin")
local wk = require("which-key")
wk.register({
	f = {
		f = { telescopeFunctions.find_files, "Find Files" }
	},
	s = {
		t = { telescopeFunctions.live_grep, "Search Text" }
	}
}, { prefix = "<leader>" })
