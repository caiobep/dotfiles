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
noremap <C-d> :action EditorMoveDownAndScroll<CR>

noremap <leader>fa :action FindInPath<CR>
noremap <leader>ff :action GotoFile<CR>

noremap <leader><TAB> :action JumpToLastChange<CR>

" Code Actions
noremap <leader>ca :action ShowIntentionActions<CR>
noremap <leader>cr :action Refactorings.QuickListPopupAction<CR>
noremap <leader>cR :action RunMenu<CR>
noremap <leader>cf :action ReformatCode<CR>
noremap <leader>ct :action TodoViewGroupByFlattenPackage<CR>


" ================================================================
"                         Extract
" ================================================================
noremap <leader>ee :action ExtractMethodToolWindow.TreePopup<CR>
noremap <leader>ec :action ExtractClass<CR>
noremap <leader>ei :action ExtractInterface<CR>
noremap <leader>eI :action ExtractInclude<CR>
noremap <leader>eta :action TypeScriptExtractTypeAlias<CR>
noremap <leader>eca :action ReactExtractComponentAction<CR>
noremap <leader>em :action ExtractMethod<CR>
noremap <leader>esc :action ExtractSuperClass<CR>


" ================================================================
"                         Refactor
" ================================================================
  noremap <leader>R :action Refactorings.QuickListPopupAction<CR>
  noremap <leader>re :action RenameElement<CR>
  noremap <leader>rf :action RenameFile<CR>


" ================================================================
"                         Debugger
" ================================================================
  noremap <leader>dd :action Debugger<CR>
  noremap <leader>da :action ToggleLineBreakpoint<CR>
  noremap <leader>dc :action Debugger.RemoveAllBreakpoints<CR>
  noremap <leader>rf :action RenameFile<CR>


" ================================================================
"                           Insert
" ================================================================
noremap <leader>I :action randomness.ShowGroup<CR>

" Insert - UUID
  noremap <leader>iU :action randomness.InsertUuid<CR>
  noremap <leader>iuu :action randomness.InsertUuid<CR>
  noremap <leader>iua :action randomness.InsertUuidArray<CR>
  noremap <leader>iur :action randomness.InsertUuidRepeat<CR>
  noremap <leader>ius :action randomness.UuidSettings<CR>
  noremap <leader>iuS :action randomness.UuidQuickSwitchScheme<CR>

" Insert - Word
  noremap <leader>iW :action randomness.InsertWord<CR>
  noremap <leader>iww :action randomness.InsertWord<CR>
  noremap <leader>iwa :action randomness.InsertWordArray<CR>
  noremap <leader>iwr :action randomness.InsertWordRepeat<CR>
  noremap <leader>iws :action randomness.WordSettings<CR>
  noremap <leader>iwS :action randomness.WordQuickSwitchScheme<CR>

" Insert - Decimal
  noremap <leader>iD :action randomness.InsertDecimal<CR>
  noremap <leader>idd :action randomness.InsertDecimal<CR>
  noremap <leader>ida :action randomness.InsertDecimalArray<CR>
  noremap <leader>idr :action randomness.InsertDecimalRepeat<CR>
  noremap <leader>ids :action randomness.DecimalSettings<CR>
  noremap <leader>idS :action randomness.DecimalQuickSwitchScheme<CR>

" Insert - Integer
  noremap <leader>iI :action randomness.InsertInteger<CR>
  noremap <leader>iid :action randomness.InsertInteger<CR>
  noremap <leader>iia :action randomness.InsertIntegerArray<CR>
  noremap <leader>iir :action randomness.InsertIntegerRepeat<CR>
  noremap <leader>iis :action randomness.IntegerSettings<CR>
  noremap <leader>iiS :action randomness.IntegerQuickSwitchScheme<CR>

" Insert - String
noremap <leader>iS :action randomness.InsertString<CR>
noremap <leader>isd :action randomness.InsertString<CR>
noremap <leader>isa :action randomness.InsertStringArray<CR>
noremap <leader>isr :action randomness.InsertStringRepeat<CR>
noremap <leader>iss :action randomness.StringSettings<CR>
noremap <leader>isS :action randomness.StringQuickSwitchScheme<CR>

" Misc
noremap <leader>uml :action ShowUmlDiagram<CR>


