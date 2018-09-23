" Plugins
    call plug#begin('~/.dotfiles/vim/plugged')

    " Vim Tooling
    Plug 'terryma/vim-multiple-cursors'
    Plug 'honza/vim-snippets'
    Plug 'junegunn/fzf.vim'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug '/opt/fzf' | Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'vim-syntastic/syntastic'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-surround'

    " Git Conflict - merge tool
    Plug 'tpope/vim-fugitive'

    " Typescript
    Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
    Plug 'mxw/vim-jsx'

    " Python
    Plug 'vim-python/python-syntax', { 'for': 'python' }

    " Multi-language highligting
    Plug 'sheerun/vim-polyglot'

    " Clojure
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
    Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
    Plug 'venantius/vim-eastwood', { 'for': 'clojure' }
    Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
    Plug 'kien/rainbow_parentheses.vim', { 'for': 'clojure' }

    " Csharp
    Plug 'OmniSharp/omnisharp-vim', { 'for': 'csharp' }

    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " Editorconfig
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

    filetype plugin indent on

    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab

    set list
    set listchars=tab:->,trail:·,extends:>,precedes:<

    "Autocompletion
    set wildmenu
    set wildmode=list:longest

    set foldmethod=indent
    set foldnestmax=10


    let mapleader="\<space>"


