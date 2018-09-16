" Plugins
    call plug#begin('~/.dotfiles/vim/plugged')
    Plug 'terryma/vim-multiple-cursors'
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/fzf.vim'
    Plug 'vim-python/python-syntax', { 'for': 'python' }
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
    Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
    Plug 'OmniSharp/omnisharp-vim', { 'for': 'csharp' }
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'sgur/vim-editorconfig'
    Plug 'connorholyday/vim-snazzy'
    call plug#end()

" Theme
    let g:SnazzyTransparent = 1
    colorscheme snazzy

    set hidden

" Configurations
    set autoindent

    set number
    set relativenumber
    set termguicolors

    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    set expandtab

    let mapleader="\<space>"



