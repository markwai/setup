" Buffer-reload of document on write
autocmd! bufwritepost .vimrc source %

colo slate
set hls
set expandtab
set ts=2 sw=2 sts=2
set linebreak
set incsearch
set shiftround
set preserveindent
set showcmd
set showmode
set hidden

set smartindent
set smarttab
set showmatch
set vb t_vb= " Silence the error bells.
set title
set nocompatible
set background=dark
set number

" set mouse=a " on OSX press ALT + Click

" Multiple indentation of code blocks
vnoremap < <gv
vnoremap > >gv

" System clipboard hook
vmap <C-c> "*y
vmap <C-p> "*p

set ruler
set updatecount=100
set shell=bash
nore ; :

set laststatus=2
let g:Powerline_symbols='fancy'
set fillchars+=stl:\ ,stlnc:\

syntax on
filetype plugin indent on
" Try the following if your GUI uses a dark background.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" au BufWritePre * :%s/\s\+$//e " delete trailing spaces on exit

if has("autocmd")
	autocmd FileType ruby set omnifunc=rubycomplete#Complete
	let g:rubycomplete_buffer_loading = 1
	let g:rubycomplete_classes_in_global = 1

	autocmd FileType python set omnifunc=pythoncomplete#Complete
	let g:pythoncomplete_buffer_loading = 1
	let g:pythoncomplete_classes_in_global = 1
endif

execute pathogen#infect()

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" restore cursor position
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\ exe "normal! g`\"" |
	\ endif
if &t_Co > 2 || has("gui_running")
	syntax on
endif

let &t_Co=256

" window splits
set splitbelow
set splitright

" set for initial split
set cul
set cursorcolumn

" highlight line for active split
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul cursorcolumn
  autocmd WinLeave * set nocul nocursorcolumn
augroup END

" remap ctrl-w navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
