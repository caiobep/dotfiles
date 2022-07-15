(module config.plugin
  {autoload {nvim aniseed.nvim
             a aniseed.core
             util config.util
             packer packer}})

(defn safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :config.plugin. name))]
    (when (not ok?)
      (print (.. "config error: " val-or-err)))))

(defn- use-with-packer [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
  (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (use (a.assoc opts 1 name)))))))
  nil)


(use-with-packer
  ;plugin Manager
  :wbthomason/packer.nvim {}

  ;nvim config and plugins in Fennel
  :Olical/aniseed {:branch :develop}

  ;file exploration
  :kyazdani42/nvim-tree.lua {:requires [:kyazdani42/nvim-web-devicons]
                             :mod :filetree}

  ;clojure
  :Olical/conjure {:branch :master :mod :conjure}

  ; multicursor selector
  :mg979/vim-visual-multi {}

  ;text alignment
  :junegunn/vim-easy-align {:mod :easy-align}

  ;git helper
  :tpope/vim-fugitive {}

  ;sexp
  :guns/vim-sexp {:mod :sexp}
  :tpope/vim-sexp-mappings-for-regular-people {}
  :tpope/vim-repeat {}
  :tpope/vim-surround {}

  ;tmux
  :christoomey/vim-tmux-navigator {:mod :tmux-navigator}
  :melonmanchan/vim-tmux-resizer {}

  ;file searching
  :nvim-telescope/telescope.nvim {:requires [:nvim-lua/popup.nvim
                                             :nvim-lua/plenary.nvim]
                                  :mod :telescope}

  ;parsing system
  :nvim-treesitter/nvim-treesitter {:run ":TSUpdate"
                                    :mod :treesitter}

  ;snippets
  :L3MON4D3/LuaSnip {:requires [:saadparwaiz1/cmp_luasnip]}



  ;autocomplete
  :hrsh7th/nvim-cmp {:requires [:hrsh7th/cmp-buffer
                                :hrsh7th/cmp-path
                                :hrsh7th/cmp-calc
                                :hrsh7th/cmp-nvim-lsp
                                :hrsh7th/cmp-nvim-lua
                                :hrsh7th/cmp-vsnip
                                :PaterJason/cmp-conjure]
                     :mod :cmp}

  :github/copilot.vim {}

  ;status line
  :hoob3rt/lualine.nvim {:mod :lualine}

  ;lsp
  :neovim/nvim-lspconfig {:mod :lspconfig}

  ;refactoring
  :ThePrimeagen/refactoring.nvim {:requires [:nvim-lua/plenary.nvim
                                             :nvim-treesitter/nvim-treesitter]
                                  :mod :refactoring}

  ;theme
  :eddyekofo94/gruvbox-flat.nvim {:mod :theme}

  :ryanoasis/vim-devicons {})

