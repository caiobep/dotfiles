call plug#begin('~/.dotfiles/vim/plugged')
    " Vim Tooling
    Plug 'terryma/vim-multiple-cursors'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'scrooloose/nerdcommenter' " Quick comments.
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'w0rp/ale'
    Plug 'vim-syntastic/syntastic'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'tmsvg/pear-tree'
    Plug 'justinmk/vim-sneak'
    Plug 'sgur/vim-editorconfig'
    Plug 'tpope/vim-commentary'
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'justinmk/vim-sneak'
    Plug 'segeljakt/vim-silicon'
    Plug 'takac/vim-hardtime'
    Plug 'jremmen/vim-ripgrep' " Use RipGrep in Vim and display results in a quickfix list
    Plug 'rizzatti/dash.vim' " Dash App Integration
    Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
    Plug 'romainl/vim-cool' " Stop matching after search is done
    Plug 'unblevable/quick-scope' " Highlight f, F jumps.
    Plug 'Shougo/vimproc.vim', {'do' : 'make'} " Interactive command execution.
    Plug 'tpope/vim-repeat' " Enable repeating supported plugin maps.
    Plug 'tpope/vim-surround' " Quoting/parenthesizing made simple.
    Plug 'junegunn/vim-easy-align' " Simple, easy-to-use alignment.
"   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fzf search.
"   Plug 'junegunn/fzf.vim' " Fzf search.
    Plug 'haya14busa/incsearch.vim' " Improved incremental searching.
    Plug 'easymotion/vim-easymotion' " Vim motions on speed.
    Plug 'thinca/vim-quickrun' " Run commands quickly.

    " Smat Async autocomplete
    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'Shougo/deoplete-rust'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#keyword_patterns = {}
    let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

    Plug 'Shougo/denite.nvim'

    " Themes
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'

    " Git Conflict - merge tool
    Plug 'tpope/vim-fugitive' " Git Wrapper
    Plug 'mhinz/vim-signify' " Show a diff using Vim its sign column.

    " JavaScript
    Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
    Plug 'mxw/vim-jsx'

    " Typescript
    " Syntax Highlithing
    Plug 'ianks/vim-tsx', { 'for': 'typescript.tsx' }
    Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
    Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
    Plug 'peitalin/vim-jsx-typescript', { 'for': 'typescript' }
    Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }

    " Prettier Support
    Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }


    " Rust
    Plug 'racer-rust/vim-racer'
    Plug 'rust-lang/rust.vim'

    " Elm
    Plug 'elmcast/elm-vim', { 'for': 'elm' }

    "" Multi-language highligting
    Plug 'sheerun/vim-polyglot'

    "" Clojure
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
    Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
    Plug 'venantius/vim-eastwood', { 'for': 'clojure' }
    Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
    Plug 'kien/rainbow_parentheses.vim', { 'for': 'clojure' }
    Plug 'bhurlow/vim-parinfer', { 'for': 'clojure' }

    "" Csharp
    "Plug 'OmniSharp/omnisharp-vim', { 'for': 'csharp' }

    "" Golang
    "Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    "Plug 'mhartington/nvim-typescript', { 'build': './install.sh' }

call plug#end()

set undofile
set visualbell

filetype plugin indent on
let g:onedark_termcolors = 1
let g:onedark_terminal_italics = 1

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
  augroup END
endif

syntax on
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'soft'


" General Editor Settings
set backspace=2
set colorcolumn=80
set autoindent

set number
set ruler
set encoding=utf-8
set backspace=2
set colorcolumn=80

set ignorecase
set smartcase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " Use spaces instead of tabs

set hlsearch
set list
set listchars=tab:▶-,trail:•,extends:»,precedes:«,eol:¬

set spelllang=pt_br,en

set relativenumber
set termguicolors
set clipboard=unnamed "shared clipboard with macOS

set wildmenu
set wildmode=list:longest

set nobackup             " no backup
set noswapfile           " no backup

" Use Italic Fonts
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic

" NERD Tree
map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeIgnore=['\.git$[[dir]]','\.DS_Store$']

" Fugetive
noremap <leader>g :Git<space>

" FZF
"let g:fzf_layout = { 'down': '~30%' }
"let g:fzf_layout = { 'window': 'enew' }
"let g:fzf_layout = { 'window': '-tabnew' }
"let g:fzf_layout = { 'window': '10split' }
"let g:fzf_action = {
  \ 't': 'tab split',
  \ 's': 'split',
  \ 'v': 'vsplit' }

" Tmux
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

" ALE status in Airline
let g:airline#extensions#ale#enabled = 1

" Airline settings
let g:airline_theme = 'minimalist'
let g:airline_powerline_fonts = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_mode_map = {
   \ '__' : '--',
   \ 'n'  : 'N',
   \ 'i'  : 'I',
   \ 'R'  : 'R',
   \ 'c'  : 'C',
   \ 'v'  : 'V',
   \ 'V'  : 'V-L',
   \ 's'  : 'S',
   \ 'S'  : 'S-L',
   \ 't'  : 'T'
   \ }
let g:airline#extensions#branch#displayed_head_limit = 12 " branch name size
let g:airline#extensions#branch#format = 2 " branch name format
let g:airline_left_sep = '' " no separators
let g:airline_left_alt_sep = '' " no separators
let g:airline_right_sep = '' " no separators
let g:airline_right_alt_sep = '' " no separators
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.notexists = ''
let g:airline_section_x = airline#section#create_right(['tagbar']) " no filetype
call airline#parts#define_raw('linenr', '%l')
call airline#parts#define_accent('linenr', 'bold')
let g:airline_section_z = airline#section#create(['%3p%%  ', g:airline_symbols.linenr .' ', 'linenr', ':%c '])

" Ale
let g:ale_lint_on_text_changed = 0 "dont lint on text change
let g:ale_lint_on_save = 1 "lint on save
let g:ale_sign_warning = ''
let g:ale_sign_error = ''
let g:ale_echo_msg_format = '%severity%: %s [%linter%]'
let g:ale_statusline_format = ['E:%s', 'W:%s', 'OK']
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEError cterm=undercurl ctermfg=none
highlight ALEWarning cterm=undercurl ctermfg=none
"let g:ale_fixers = { 'javascript': 'eslint', 'php': 'phpcbf' }
let g:ale_completion_enabled = 1
map <leader>f :ALEFix<cr>
map <leader>l :ALELint<cr>

" JSX
highlight link xmlEndTag xmlTag
let g:jsx_ext_required = 0

"JSX dark red
hi tsxTagName guifg=#E06C75

 "JSX orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#E06C75
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" JSX yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

" Typescript
au FileType typescript nmap gd <Plug>(TsuquyomiDefinition)
au FileType typescript nmap gs <Plug>(TsuquyomiSplitDefinition)
au FileType typescript nmap gx <Plug>(TsuquyomiRenameSymbol)
au FileType typescript nmap gr <Plug>(TsuquyomiReferences)
au FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
au FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)
au FileType typescript nmap <buffer> <Leader>t: <C-u>echo tsuquyomi#hint()<CR>

" Rust
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" Clojure
au FileType clojure nmap gd <Plug>FireplaceDjump
au FileType clojure nmap gs <Plug>FireplaceDsplit
au FileType clojure nmap gx <Plug>FireplaceSource
au FileType clojure nmap <leader>gd <Plug>FireplaceK

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

let g:deoplete#enable_at_startup = 1
let g:sneak#label = 1

" Key Mappings

" Command Mappings
cabbrev rp Rp

" CTRL Mappings
nnoremap <C-L> :Files<CR>

" Space Mappings
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"
let maplocalleader = "\<Space>"
nnoremap <leader>= yypVr=
