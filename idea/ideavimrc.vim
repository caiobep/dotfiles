
set rnu
set visualbell
set number
set ignorecase
set smartcase
set hlsearch
set relativenumber
set showmode
set clipboard=unnamed "shared clipboard with macOS

let mapleader = "\<Space>"
set scrolloff=5


"IDEA VIM Specific Settings

set ideajoin
set ideamarks
set idearefactormode=keep
set lookupkeys
set ideastatusicon
set ideawrite
set incsearch
set NERDTree

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
noremap <leader>h  :noh<CR>
vnoremap <leader>p "_dP

" xnoremap <expr> K :action MoveStatementUp<CR>
" xnoremap <expr> J :action MoveStatementDown<CR>

noremap gh :action ShowErrorDescription<CR>
noremap gH :action QuickJavaDoc<CR>
noremap gy :action ExpressionTypeInfo<CR>
noremap gr :action ShowUsages<CR>
noremap ga :action StringManipulation.EditorPopupMenu<CR>

noremap ]e :action GotoNextError<CR>
noremap [e :action GotoPreviousError<CR>

noremap ]b :action GotoNextBookmark<CR>
noremap [b :action GotoPreviousBookmark<CR>

noremap <leader>m :action ShowBookmarks<CR>
noremap <leader>M :action OpenBookmarkGroup<CR>

noremap ma :action ToggleBookmarkA<CR>
noremap <buffer> ,a :action GotoBookmarkA<CR>
noremap <buffer> <Tab>a :action GotoBookmarkA<CR>

noremap ms :action ToggleBookmarkS<CR>
noremap <buffer> ,s :action GotoBookmarkS<CR>
noremap <buffer> <Tab>s :action GotoBookmarkA<CR>

noremap md :action ToggleBookmarkD<CR>
noremap <buffer> ,d :action GotoBookmarkD<CR>
noremap <buffer> <Tab>d :action GotoBookmarkA<CR>

noremap mf :action ToggleBookmarkF<CR>
noremap <buffer> ,f :action GotoBookmarkF<CR>
noremap <buffer> <Tab>f :action GotoBookmarkA<CR>

noremap mq :action ToggleBookmarkQ<CR>
noremap <buffer> ,q :action GotoBookmarkQ<CR>
noremap <buffer> <Tab>q :action GotoBookmarkQ<CR>

noremap mw :action ToggleBookmarkW<CR>
noremap <buffer> ,w :action GotoBookmarkW<CR>

noremap me :action ToggleBookmarkE<CR>
noremap <buffer> ,e :action GotoBookmarkE<CR>

noremap mr :action ToggleBookmarkR<CR>
noremap <buffer> ,r :action GotoBookmarkR<CR>

noremap m1 :action ToggleBookmark1<CR>
noremap <buffer> ,1 :action GotoBookmark1<CR>

noremap m2 :action ToggleBookmark2<CR>
noremap <buffer> ,2 :action GotoBookmark2<CR>

noremap m3 :action ToggleBookmark3<CR>
noremap <buffer> ,3 :action GotoBookmark3<CR>

noremap m4 :action ToggleBookmark4<CR>
noremap <buffer> ,4 :action GotoBookmark4<CR>


noremap <C-k> :action GotoNextBookmark<CR>
noremap <C-l> :action GotoNextBookmarkInEditor<CR>
noremap <C-j> :action GotoPreviousBookmark<CR>
noremap <C-h> :action GotoNextBookmarkInEditor<CR>
noremap <leader>j :action ToggleBookmark<CR>

" noremap <C-f> :action EditorMoveDownAndScroll<CR>
" noremap <C-b> :action EditorMoveDownAndScroll<CR>
" noremap <C-u> :action EditorMoveUpAndScroll<CR>
noremap <C-u> 20k<CR>
" noremap <C-d> :action EditorMoveDownAndScroll<CR>

" noremap <leader>Fa :action FindInPath<CR>
noremap <leader>f :action GotoFile<CR>
noremap <leader>e  :NERDTreeToggle<CR>
noremap <leader>/ :action CommentByLineComment<CR>

noremap <leader><TAB> :action JumpToLastChange<CR>

noremap <leader>si :source ~/.ideavimrc<CR>

" Code Actions
" noremap <leader>ca :action ShowIntentionActions<CR>
" noremap <leader>cr :action Refactorings.QuickListPopupAction<CR>
" noremap <leader>cR :action RunMenu<CR>
" noremap <leader>cf :action ReformatCode<CR>
" noremap <leader>ct :action TodoViewGroupByFlattenPackage<CR>


noremap <leader>c :action CloseContent<CR>



" ================================================================
"                         Extract
" ================================================================
noremap <leader>E :action ExtractMethodToolWindow.TreePopup<CR>
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


