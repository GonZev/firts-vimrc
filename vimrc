syntax on
set nocp
set nocompatible 
set history=1000
set nobackup
set noswapfile
set colorcolumn=80

set relativenumber
set hlsearch
set smarttab
set smartcase
set tabstop=4
set shiftwidth=4
set expandtab

" enable filetype
filetype plugin indent on
filetype on

" Persist undo history between file editing sessions.
set undofile
set undodir=~/vimfiles/undodir

"modify indenting settings
set autoindent			"autoindent always ON

" Modify some other settings about files
set encoding=utf-8	" always use unicode (god damnit, windows)
set backspace=indent,eol,start	" backspace always works on insert mode
set hidden

" Use a specific pipe ch
set fillchars+=vert:\┊

set noshowmode
set laststatus=1	" always show statusbar
set wildmenu		" enable visual wildmenu

set nowrap		" don't wrap long lines
set showmatch		" higlight matching parentheses and brackets


" Check
" Mapings 
let mapleader=","
let g:mapleader=","
" NERDTree
map <Leader>nt :NERDTreeToggle<CR>
let NERDTreeWinSize=30
let NERDTreeWinPos="right"

" Asyncomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr> pumvisible() ? asycomplete#close_popup() : "\<cr>" 
inoremap <expr> <C-y> pumvisible() ? asyncomplete#close_popup() : "\<C-y>"


let g:asyncomplete_auto_popup = 1

" Folds 
" Plugins
" 	install ack.vim & ctrlp

" hidden bars in gvim
if has("gui_running")
	set guioptions-=m
	set guioptions-=T
	set guioptions-=e
	set guitablabel=%M\ %t
endif


" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = "unique_tail"
let g:airline#_statusline_ontop = 1
let g:airline_theme='papercolor'

colorscheme pablo 
set background=dark

"##############################################################################
"" Easier split navigation
"##############################################################################
"" Use ctrl-[hjkl] to select the active split! 
nmap <silent> <c-k> :wincmd k<CR> 
nmap <silent> <c-j> :wincmd j<CR> 
nmap <silent> <c-h> :wincmd h<CR> 
nmap <silent> <c-l> :wincmd l<CR>

"vim lsp
let g:lsc_auto_map = v:true
let g:lsp_settings = {
\ 'analysis-server-dart-snapshot': {
\     'cmd': [
\         'D:/flutter/bin/cache/dart-sdk/bin/dart',
\         'language-server'
\		],
\	},
\}

nmap <buffer> gd <plug>(lsp-definition)
nmap <buffer> gs <plug>(lsp-document-symbol-search)
nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
nmap <buffer> gr <plug>(lsp-references)
nmap <buffer> gi <plug>(lsp-implementation)
nmap <buffer> gt <plug>(lsp-type-definition)
nmap <buffer> <leader>rn <plug>(lsp-rename)
nmap <buffer> [g <plug>(lsp-previous-diagnostic)
nmap <buffer> ]g <plug>(lsp-next-diagnostic)
nmap <buffer> K <plug>(lsp-hover)
nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
nnoremap <buffer> <expr><c-d> lsp#scroll(-4)


"todo vim
let g:VimTodoListsDatesEnabled = 1

let g:OmniSharp_server_use_mono = 1
