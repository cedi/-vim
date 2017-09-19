""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" make backspace works properly
set backspace=2

" Set history
set history=999

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to autoread when a file is changed from the outside
set autoread

" Enable syntax highlighting
syntax enable

" set utf8 as standard encoding
set encoding=utf8

" enable line number
set number

" set vertical line
set colorcolumn=81

" enable mouse
set mouse=a    

" enable 256 colors
set t_Co=256

" enable pathogen
execute pathogen#infect()

" Set colorscheme
" colorscheme darkblue

" Close NERDTree after selecting a file
let NERDTreeQuitOnOpen=1
 
" use system clipboard
set clipboard=unnamedplus

" Search recursive for ctags file 
set tags=./tags;

let mapleader=","

set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrap

" Setup indention and spaces to tab/tab to spaces conversion
set autoindent
set noexpandtab
" set expandtab
set tabstop=4
set shiftwidth=4

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Faster navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Function Keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easy switching between paste and normal insert mode
set pastetoggle=<F2> 

" Open FileExplorrer
nmap <silent> <F3> :NERDTreeToggle<CR>

" Open The CTags Tagbar
noremap <silent> <F4> :TagbarToggle<CR>

" Easy Buffer Switching 
nnoremap <F5> :buffers<CR>:buffer<Space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_autofocus = 1 
let g:tagbar_compact = 1 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show NERDTree when vim starts up with no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Show NERDTree when vim starts up on opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cscope_silent = 1

" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-Airline 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#left_sep = '> '
"let g:airline#extension#tabline#left_alt_sep = '>|'
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='molokai'

" More statusbar relevant settings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" allow a unsaved buffer to be hidden
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax hilighting settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.t,*.pm,*.manuscript set filetype=perl
autocmd BufRead,BufNewFile *.conf set filetype=perl
