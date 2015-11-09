execute pathogen#infect()
syntax on
filetype plugin indent on

" ===================================
" Turn on line wrapping
" ===================================
set linebreak

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

" ===================================
" jedi-vim settings
" ===================================
let g:jedi#documentation_command=""
