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
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" enable mouse
set mouse=a

" enable 256 colors
set t_Co=256

" enable pathogen
execute pathogen#infect()

" Set colorscheme
colorscheme darkblue

" Close NERDTree after selecting a file
let NERDTreeQuitOnOpen=1
 
" use system clipboard
set clipboard=unnamed

" configure paste toggle
set pastetoggle=<F2>

" Search recursive for ctags file 
set tags=./tags;

let mapleader=","

set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_autofocus = 1 
let g:tagbar_compact = 1 

noremap <silent> <F4> :TagbarToggle<CR>

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

" configure NERDTree toggle
nmap <silent> <F3> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F5> :ToggleLocationList()<CR>

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
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" allow a unsaved buffer to be hidden
set hidden
