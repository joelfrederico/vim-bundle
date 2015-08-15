execute pathogen#infect()
syntax on
filetype plugin indent on

map ; :
" ===================================
" Don't include . in iskeyword
" ===================================
let g:sh_noisk = 1

let g:Tex_Debug = 1

" ===================================
" Turn on line numbers
" ===================================
set number

" ===================================
" Map leader to comma
" ===================================
let mapleader = ","

" ===================================
" Quicker navigation
" ===================================
map <C-space> <Plug>IMAP_JumpForward
map <C-j> 5j
map <C-k> 5k
map <C-h> 5h
map <C-l> 5l
map <C-n> 5n
map <C-m> 5N
noremap J gT
noremap K gt
noremap T :tabnew<cr>
noremap <Up> gk
noremap k gk
noremap <Down> gj
noremap j gj

" ===================================
" Autosave
" ===================================
" Autosave files
au FocusLost ?* :wa
" Autosave folds
au FocusLost ?* mkview
" au BufWinEnter ?* silent loadview
au BufWinEnter *.* silent loadview

" ===================================
" Change to file directory when entering any buffer
" ===================================
autocmd BufEnter ?* :cd %:p:h

" ===================================
" Map folding to space
" ===================================
nnoremap <Space> za
vnoremap <Space> zf

" ===================================
" Configure SimpylFold
" ===================================
let g:SimpylFold_docstring_preview = 1

" ===================================
" Turn on search highlighting
" ===================================
set hlsearch

" ===================================
" Tabular settings
" ===================================
map <leader>& :Tabularize /&<cr>
map <leader>= :Tabularize /^[^=]*\zs=<cr>

" ===================================
" EnhancedCommentify settings
" ===================================
" imap <M-c> <Esc>,ca
" let g:EnhCommentifyBindInInsert   = 'No'
" let g:EnhCommentifyPretty         = 'Yes'
" let g:EnhCommentifyRespectIndent  = 'Yes'
" let g:EnhCommentifyUseBlockIndent = 'Yes'
" let g:EnhCommentifyUseMultiPartBlocks = 'Yes'

" ===================================
" LaTeX settings
" ===================================
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = 'Skim'
let g:Tex_Menus=1
let g:Tex_Folding=0
map <leader>lc :wa<cr><leader>ll
let g:Tex_CompileRule_pdf = 'latexmk -pdf $*'
let g:Tex_GotoError = 0

" ===================================
" Syntastic settings
" ===================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0

let g:syntastic_c_check_header   = 1
let g:syntastic_c_include_dirs   = [ '/opt/local/include' , '/opt/local/include/openmpi-gcc49/']

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_include_dirs = [ '/opt/local/include' , '/opt/local/include/openmpi-gcc49/','/opt/local/include/paradiseo/eo/', '/opt/local/include/paradiseo/peo/']
let g:syntastic_cpp_remove_include_errors = 1

" let g:syntastic_debug=1

let g:syntastic_tex_checkers=["chktex"]

let g:syntastic_python_flake8_args = '--ignore="E501,E221,E251,E203,W293,E201,E202,E128,E131,E123,E124,E226,F401"'

" ===================================
" vim-commentary settings
" ===================================
nmap <leader>c gcl
vmap <leader>c gc

" ===================================
" Riv settings
" ===================================
let g:riv_python_rst_hl=1

" ===================================
" Supertab settings
" ===================================
let g:SuperTabDefaultCompletionType="<c-n>"

"" ===================================
"" neocomplete
"" ===================================
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
""
"" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }
"
"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return neocomplete#close_popup() . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
"
"" For cursor moving in insert mode(Not recommended)
""inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
""inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
""inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
""inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
"" Or set this.
""let g:neocomplete#enable_cursor_hold_i = 1
"" Or set this.
""let g:neocomplete#enable_insert_char_pre = 1
"
"" AutoComplPop like behavior.
""let g:neocomplete#enable_auto_select = 1
"
"" Shell like behavior(not recommended).
""set completeopt+=longest
""let g:neocomplete#enable_auto_select = 1
""let g:neocomplete#disable_auto_complete = 1
""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
"" Enable omni completion.
"" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
