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
					require'nvim-tmux-navigation'.setup {
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
		requires = { "nvim-telescope/telescope.nvim"},
		run = "make",
	}
	use "folke/which-key.nvim"
	use "karb94/neoscroll.nvim"
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate'
	}
	use {
		"williamboman/nvim-lsp-installer",
		"neovim/nvim-lspconfig",
		"tamago324/nlsp-settings.nvim",
	}
	use {
		"akinsho/toggleterm.nvim",
		tag = 'v2.*',
	}

end)
