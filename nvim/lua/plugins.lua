vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
	use { "wbthomason/packer.nvim" }
	use { 'lewis6991/impatient.nvim' }

	use {
		{ "tpope/vim-repeat" },
		{ "tpope/vim-surround" },
		{ "tpope/vim-fugitive" },
		{ "tpope/vim-unimpaired" },
		{
			"tpope/vim-sleuth",
			setup = function()
				vim.g.sleuth_automatic = 0
			end,
		},
		{
			"tpope/vim-dispatch",
			requires = { "radenling/vim-dispatch-neovim" },
		},
	}

	-- Test and Debugging
	use {
		{
			"puremourning/vimspector",
			setup = function()
				vim.fn.sign_define("vimspectorBP", { text = " ●", texthl = "VimspectorBreakpoint" })
				vim.fn.sign_define("vimspectorBPCond", { text = " ●", texthl = "VimspectorBreakpointCond" })
				vim.fn.sign_define("vimspectorBPDisabled", { text = " ●", texthl = "VimspectorBreakpointDisabled" })
				vim.fn.sign_define(
					"vimspectorPC",
					{ text = "▶", texthl = "VimspectorProgramCounter", linehl = "VimspectorProgramCounterLine" }
				)
				vim.fn.sign_define("vimspectorPCBP", {
					text = "●▶",
					texthl = "VimspectorProgramCounterBreakpoint",
					linehl = "VimspectorProgramCounterLine",
				})
			end,
			ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
		},
		{
			"janko/vim-test",
			config = function()
				require("wb.vim-test").setup()
			end,
		},
	}

	-- Better Defaults
	use {
		{ "https://git.sr.ht/~whynothugo/lsp_lines.nvim" },
		{ "lewis6991/satellite.nvim" },
		{ "ggandor/leap.nvim" },
		{ "simnalamburt/vim-mundo" },
		{ "airblade/vim-rooter" },
		{ "mizlan/iswap.nvim" },
		{ "linty-org/readline.nvim" },
		{
			"andymass/vim-matchup",
			setup = function()
				vim.g.matchup_matchparen_offscreen = {
					method = "popup",
					fullwidth = 1,
					highlight = "OffscreenMatchPopup",
				}
			end,
		},
		{
			"numToStr/Comment.nvim",
			config = function()
				require("Comment").setup()
			end,
		},
		{
			"windwp/nvim-autopairs",
			config = function()
				require("wb.nvim-autopairs").setup()
			end,
		},
		{
			"s1n7ax/nvim-window-picker",
			tag = "v1.*",
		},
		{
			-- "hrsh7th/nvim-cmp",
			"williamboman/nvim-cmp",
			branch = "feat/docs-preview-window",
			requires = {
				{ "hrsh7th/cmp-nvim-lsp" },
				{ "hrsh7th/cmp-buffer" },
				{ "hrsh7th/cmp-calc" },
				{ "hrsh7th/cmp-path" },
				{ "andersevenrud/cmp-tmux" },
				{ "saadparwaiz1/cmp_luasnip" },
				{ "petertriho/cmp-git" },
				{
					"L3MON4D3/LuaSnip",
					requires = { "rafamadriz/friendly-snippets" },
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load()
					end,
				},
				{
					"onsails/lspkind-nvim",
					config = function()
						require("lspkind").init()
					end,
				},
			},
			config = function()
				require("wb.cmp").setup()
			end,
		},
		{
			"junegunn/vim-peekaboo",
			setup = function()
				vim.g.peekaboo_compact = 0
			end,
		},
		{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			requires = {
				{ "nvim-lua/plenary.nvim" },
				{ "kyazdani42/nvim-web-devicons" },
				{ "MunifTanjim/nui.nvim" },
			},
			config = function()
				require("wb.neo-tree").setup()
			end,
		},
		{
			"nvim-lualine/lualine.nvim",
			config = function()
				require("wb.lualine").setup()
			end,
		},
		{
			"szw/vim-maximizer",
			config = function()
				vim.api.nvim_set_keymap("n", "<C-w>z", "<cmd>MaximizerToggle!<CR>", { silent = true, noremap = false })
			end,
		},
		{
			"akinsho/toggleterm.nvim",
			config = function()
				require("toggleterm").setup {
					insert_mappings = false,
					env = {
						MANPAGER = "less -X",
					},
					terminal_mappings = false,
					start_in_insert = false,
					open_mapping = [[<space>t]],
					highlights = {
						CursorLineSign = { link = "DarkenedPanel" },
						Normal = { guibg = "#14141A" },
					},
				}

				-- Remove WinEnter to allow moving a toggleterm to new tab
				vim.cmd [[autocmd! ToggleTermCommands WinEnter]]
			end,
		},
		{
			"editorconfig/editorconfig-vim",
			setup = function()
				vim.g.EditorConfig_max_line_indicator = ""
				vim.g.EditorConfig_preserve_formatoptions = 1
			end,
		},
		{
			"stevearc/dressing.nvim",
			config = function()
				require("dressing").setup {
					input = {
						winblend = 10,
						winhighlight = "Normal:DressingInputNormalFloat,NormalFloat:DressingInputNormalFloat,FloatBorder:DressingInputFloatBorder",
						border = "single",
					},
				}
			end,
		},
	}


	-- Theme and UI
	use {
		'eddyekofo94/gruvbox-flat.nvim',
		{
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require("indent_blankline").setup {
					char = "▏",
					space_char_blankline = ".",
					use_treesitter_scope = true,
					buftype_exclude = { "terminal", "nofile" },
					filetype_exclude = { "help", "packer" },
					show_current_context = true,
					show_current_context_start = true,
				}
			end,
		},
		{
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("wb.nvim-colorizer").setup()
			end,
		},
	}

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		requires = {
			{ "nvim-treesitter/playground" },
			{ "nvim-treesitter/nvim-treesitter-textobjects" },
			{ "p00f/nvim-ts-rainbow" },
			{ "JoosepAlviste/nvim-ts-context-commentstring" },
			{ "windwp/nvim-ts-autotag" },
		},
		config = function()
			require("wb.nvim-treesitter").setup()
		end,
	}


	-- LSP
	use {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "neovim/nvim-lspconfig" },
		{ "folke/lua-dev.nvim" },
		{ "b0o/SchemaStore.nvim" },
		{ "ray-x/lsp_signature.nvim" },
		{ "simrat39/rust-tools.nvim", branch = "modularize_and_inlay_rewrite" },
		{ "jose-elias-alvarez/null-ls.nvim" },
		{ "jose-elias-alvarez/typescript.nvim" },
		{ "lvimuser/lsp-inlayhints.nvim", branch = "readme" },
		{ "j-hui/fidget.nvim" },
		{ "SmiteshP/nvim-navic" },
		{
				"zbirenbaum/neodim",
				requires = { "nvim-treesitter/nvim-treesitter" },
				config = function()
					require("neodim").setup {
						alpha = 0.6,
						hide = {
							virtual_text = false,
							signs = true,
							underline = false,
						},
					}
				end,
		},
    {
			"rmagatti/goto-preview",
			config = function()
				require("goto-preview").setup {
					default_mappings = true,
					opacity = 7,
					post_open_hook = function(buf_handle, win_handle)
						vim.cmd(([[ autocmd WinLeave <buffer> ++once call nvim_win_close(%d, v:false)]]):format(win_handle))
						vim.api.nvim_buf_set_keymap(
							buf_handle,
							"n",
							"<Esc>",
							("<cmd>call nvim_win_close(%d, v:false)<CR>"):format(win_handle),
							{ noremap = true }
						)
					end,
				}
			end,
		}
	}


	-- Telescope
	use {
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-project.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
		config = function()
			require("wb.telescope").setup()
		end,
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		tag = 'nightly'
	}
	use {
		'alexghergh/nvim-tmux-navigation',
		config = function()
			require 'nvim-tmux-navigation'.setup {
				disable_when_zoomed = true,
				keybindings = {
					left = "<C-h>",
					down = "<C-j>",
					up = "<C-k>",
					right = "<C-l>",
					last_active = "<C-\\>",
					next = "<C-Space>",
				}
			}
		end
	}


	use {
		"nvim-telescope/telescope-fzf-native.nvim",
		requires = { "nvim-telescope/telescope.nvim" },
		run = "make",
	}

	use "folke/which-key.nvim"
	use "karb94/neoscroll.nvim"
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate'
	}

	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	use {
		"akinsho/toggleterm.nvim",
		tag = 'v2.*',
	}

end)
