call plug#begin('~/.dotfiles/vim/plugged')
    " Vim Tooling
    Plug 'terryma/vim-multiple-cursors'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'scrooloose/nerdcommenter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'w0rp/ale'
    Plug 'vim-syntastic/syntastic'
    Plug 'tpope/vim-surround'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'tmsvg/pear-tree'
    Plug 'justinmk/vim-sneak'
    Plug 'takac/vim-hardtime'
    Plug 'sgur/vim-editorconfig'

    " Fzf
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf.vim'

    " Themes
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'joshdick/onedark.vim'

    " Git Conflict - merge tool
    Plug 'tpope/vim-fugitive'

    " Better Autocomplete
    Plug 'Shougo/neocomplcache.vim'
    "Plug 'Valloric/YouCompleteMe'

    " JavaScript
    Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
    Plug 'mxw/vim-jsx'

    " Typescript
    Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
    Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
    Plug 'peitalin/vim-jsx-typescript', { 'for': 'typescript' }

    " Python
    Plug 'vim-python/python-syntax', { 'for': 'python' }
    Plug 'davidhalter/jedi-vim', { 'for': 'python' }
    Plug 'fisadev/vim-isort', { 'for': 'python' }

    " Multi-language highligting
    Plug 'sheerun/vim-polyglot'

    " Clojure
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
    Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
    Plug 'venantius/vim-eastwood', { 'for': 'clojure' }
    Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
    Plug 'kien/rainbow_parentheses.vim', { 'for': 'clojure' }
    Plug 'bhurlow/vim-parinfer', { 'for': 'clojure' }

    " Csharp
    Plug 'OmniSharp/omnisharp-vim', { 'for': 'csharp' }

    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

filetype plugin indent on
let g:onedark_termcolors = 1
let g:onedark_terminal_italics = 1

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

syntax on
colorscheme onedark
set background=dark

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
"let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.git$[[dir]]','\.DS_Store$']

" Fugetive
noremap <leader>g :Git<space>

" FZF
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split' }
let g:fzf_action = {
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
let g:ale_fixers = { 'javascript': 'eslint', 'php': 'phpcbf' }
let g:ale_completion_enabled = 1
map <leader>f :ALEFix<cr>
map <leader>l :ALELint<cr>

" JSX
highlight link xmlEndTag xmlTag
let g:jsx_ext_required = 0
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

"JSX dark red
hi tsxTagName guifg=#E06C75

 "JSX orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
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

" Vim Sneak
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" Python Jedi
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#goto_command = "gd"
let g:jedi#goto_assignments_command = "<leader>gd"
let g:jedi#goto_definitions_command = "gd"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "gu"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "gx"

" Typescript
au FileType typescript nmap gd <Plug>(TsuquyomiDefinition)
au FileType typescript nmap gs <Plug>(TsuquyomiSplitDefinition)
au FileType typescript nmap gx <Plug>(TsuquyomiRenameSymbol)
au FileType typescript nmap gr <Plug>(TsuquyomiReferences)
au FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
au FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)
au FileType typescript nmap <buffer> <Leader>t: <C-u>echo tsuquyomi#hint()<CR>

" Clojure
au FileType clojure nmap gd <Plug>FireplaceDjump
au FileType clojure nmap gs <Plug>FireplaceDsplit
au FileType clojure nmap gx <Plug>FireplaceSource
au FileType clojure nmap <leader>gd <Plug>FireplaceK

" Functions
function! StartUp()
endfunction

autocmd VimEnter * call StartUp()
