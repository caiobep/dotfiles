set clipboard+=unnamed

set rnu
set undofile
set visualbell


set spelllang=pt_br,en
set expandtab
let mapleader = "\<Space>"
set wrap linebreak nolist


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

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " Use spaces instead of tabs

set hlsearch
set list

set spelllang=pt_br,en

set relativenumber
set termguicolors
set clipboard=unnamed "shared clipboard with macOS

set wildmenu
set wildmode=list:longest

set nobackup             " no backup
set noswapfile           " no backup


"IDEA VIM Specific Settings

set ideajoin
set ideamarks

set easymotion
set surround
set multiple-cursors
set commentary
set ReplaceWithRegister
set argtextobj
set textobj-entire

set highlightedyank
let g:highlightedyank_highlight_duration = "1000"

"IDEA VIM IDE Commands

"Keymaps
noremap \r :action ReformatCode<CR>
noremap <leader>d :action Debug<CR>
noremap \b :action ToggleLineBreakpoint<CR>
noremap Y v$y<CR>

noremap gh :action ShowErrorDescription<CR>
noremap gH :action QuickJavaDoc<CR>
noremap gy :action ExpressionTypeInfo<CR>
noremap gr :action ShowUsages<CR>
noremap ga :action StringManipulation.EditorPopupMenu<CR>

noremap ]e :action GotoNextError<CR>
noremap [e :action GotoPreviousError<CR>

noremap ]b :action GotoNextBookmark<CR>
noremap [b :action GotoPreviousBookmark<CR>

noremap <C-f> :action EditorMoveDownAndScroll<CR>
noremap <C-b> :action EditorMoveDownAndScroll<CR>
noremap <C-u> :action EditorMoveUpAndScroll<CR>
noremap <C-d> :action EditorMoveUpAndScroll<CR>

noremap <leader>fa :action FindInPath<CR>
noremap <leader>ff :action GotoFile<CR>

noremap <leader><TAB> :action JumpToLastChange<CR>

" Code Actions
noremap <leader>ca :action ShowIntentionActions<CR>
noremap <leader>cr :action Refactorings.QuickListPopupAction<CR>
noremap <leader>cR :action RunMenu<CR>
noremap <leader>cf :action ReformatCode<CR>
noremap <leader>ct :action TodoViewGroupByFlattenPackage<CR>


" Extract
noremap <leader>ee :action ExtractMethodToolWindow.TreePopup<CR>
noremap <leader>ec :action ExtractClass<CR>
noremap <leader>ei :action ExtractInterface<CR>
noremap <leader>eI :action ExtractInclude<CR>
noremap <leader>eta :action TypeScriptExtractTypeAlias<CR>
noremap <leader>eca :action ReactExtractComponentAction<CR>
noremap <leader>em :action ExtractMethod<CR>
noremap <leader>esc :action ExtractSuperClass<CR>


" Refactor This
noremap <leader>re :action RenameElement<CR>
noremap <leader>rf :action RenameFile<CR>


" Misc
noremap <leader>uml :action ShowUmlDiagram<CR>


