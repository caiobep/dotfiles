vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
	use "wbthomason/packer.nvim"
	use 'eddyekofo94/gruvbox-flat.nvim'
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
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
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
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },


			{ "tamago324/nlsp-settings.nvim" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
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
