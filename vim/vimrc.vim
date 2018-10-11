call plug#begin('~/.dotfiles/vim/plugged')
    " Vim Tooling
    Plug 'terryma/vim-multiple-cursors'
    Plug 'honza/vim-snippets'
    Plug 'junegunn/fzf.vim'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'scrooloose/nerdcommenter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'w0rp/ale'
    Plug '/opt/fzf' | Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'vim-syntastic/syntastic'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-surround'
    Plug 'christoomey/vim-tmux-navigator'

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
    Plug 'bhurlow/vim-parinfer', { 'for': 'clojure' }

    " Csharp
    Plug 'OmniSharp/omnisharp-vim', { 'for': 'csharp' }

    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " Editorconfig
    Plug 'sgur/vim-editorconfig'

    " VIM Snazzy Theme
    Plug 'connorholyday/vim-snazzy'
call plug#end()

filetype plugin indent on

let g:SnazzyTransparent = 1
colorscheme snazzy
set hidden

highlight link xmlEndTag xmlTag
let g:jsx_ext_required = 0

set backspace=2
" set colorcolumn=80 " Set length limit bar
set autoindent

set number
set relativenumber
set termguicolors
set clipboard=unnamed


set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set list
set listchars=tab:->,trail:·,extends:>,precedes:<

set wildmenu
set wildmode=list:longest

set foldmethod=indent
set foldnestmax=10



" NERD Tree
map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
autocmd StdinReadPre * let s:std_in=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$[[dir]]']

" Fugetive
noremap <leader>g :Git<space>

" Ariline
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_sign_warning = ''
let g:ale_sign_error = ''
let g:ale_echo_msg_format = '%severity%: %s [%linter%]'
let g:ale_statusline_format = ['E:%s', 'W:%s', 'Ok']
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEError cterm=undercurl ctermfg=none
highlight ALEWarning cterm=undercurl ctermfg=none
let g:ale_fixers = { 'javascript': 'eslint', 'typescript': 'tslint' }
map <leader>f :ALEFix<cr>
map <leader>l :ALELint<cr>

" NERD Tree
map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
autocmd StdinReadPre * let s:std_in=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$[[dir]]']

" Fugetive
noremap <leader>g :Git<space>

" Ariline
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_sign_warning = ''
let g:ale_sign_error = ''
let g:ale_echo_msg_format = '%severity%: %s [%linter%]'
let g:ale_statusline_format = ['E:%s', 'W:%s', 'Ok']
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEError cterm=undercurl ctermfg=none
highlight ALEWarning cterm=undercurl ctermfg=none
let g:ale_fixers = { 'javascript': 'eslint', 'typescript': 'tslint' }
map <leader>f :ALEFix<cr>
map <leader>l :ALELint<cr>

" NERD Tree
map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
autocmd StdinReadPre * let s:std_in=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$[[dir]]']

" Fugetive
noremap <leader>g :Git<space>

" Ariline
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_sign_warning = ''
let g:ale_sign_error = ''
let g:ale_echo_msg_format = '%severity%: %s [%linter%]'
let g:ale_statusline_format = ['E:%s', 'W:%s', 'Ok']
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEError cterm=undercurl ctermfg=none
highlight ALEWarning cterm=undercurl ctermfg=none
let g:ale_fixers = { 'javascript': 'eslint', 'typescript': 'tslint' }
map <leader>f :ALEFix<cr>
map <leader>l :ALELint<cr>

" NERD Tree
map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
autocmd StdinReadPre * let s:std_in=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$[[dir]]']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugetive
noremap <leader>g :Git<space>

" Ariline
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_sign_warning = ''
let g:ale_sign_error = ''
let g:ale_echo_msg_format = '%severity%: %s [%linter%]'
let g:ale_statusline_format = ['E:%s', 'W:%s', 'Ok']
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEError cterm=undercurl ctermfg=none
highlight ALEWarning cterm=undercurl ctermfg=none
let g:ale_fixers = { 'javascript': 'eslint', 'typescript': 'tslint' }
map <leader>f :ALEFix<cr>
map <leader>l :ALELint<cr>

