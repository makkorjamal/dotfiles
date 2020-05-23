" enable syntax highlighting
"
"Key Mappings for python
nnoremap ,l :term ranger .<CR>
set pastetoggle=<F3>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!ipython3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!ipython3' shellescape(@%, 1)<CR>
"
"other settings
set shell=/usr/bin/tmux
syntax enable
let g:python_highlight_all = 1
" show line numbers
set number
set relativenumber
set splitbelow
" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent
" indent folding
"set foldmethod=indent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch
set laststatus=2
" enable all Python syntax highlighting features
set nocompatible
filetype off
set undodir=~/.vim/undodir
filetype plugin indent on
"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" hard times
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
let g:hardtime_timeout = 2000
let g:hardtime_showmsg = 1
"fzf
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" plugins

call plug#begin('~/.vim/plugged')
Plug 'takac/vim-hardtime'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'vim-python/python-syntax'
call plug#end()

