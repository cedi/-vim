""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable utf-8 everywhere
set encoding=utf-8

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

" Set colorscheme
" colorscheme darkblue

" Close NERDTree after selecting a file
let NERDTreeQuitOnOpen=1

" use system clipboard
set clipboard=unnamed

" Search recursive for ctags file
set tags=./tags;

let mapleader=","

" Define search options
set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrap

" Setup indention and spaces to tab/tab to spaces conversion
set autoindent
set noexpandtab
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
noremap <silent> <F3> :NERDTreeToggle<CR>

" Open The CTags Tagbar
noremap <silent> <F4> :TagbarToggle<CR>

" Easy Buffer Switching
nnoremap <F5> :buffers<CR>:buffer<Space>

" clear highliging using space
noremap <silent> <Space> :noh<CR>

" Set list toggle
noremap <silent> <F6> :set list!<CR>

" Git Blame
noremap <silent> <F7> :Gblame<CR>

" Pep8 style checker
let g:pep8_map='<F8>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='molokai'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" allow a unsaved buffer to be hidden
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax hilighting settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:tagbar_type_go = {
			\ 'ctagstype' : 'go',
			\ 'kinds'     : [
			\ 'p:package',
			\ 'i:imports:1',
			\ 'c:constants',
			\ 'v:variables',
			\ 't:types',
			\ 'n:interfaces',
			\ 'w:fields',
			\ 'e:embedded',
			\ 'm:methods',
			\ 'r:constructor',
			\ 'f:functions'
			\ ],
			\ 'sro' : '.',
			\ 'kind2scope' : {
			\ 't' : 'ctype',
			\ 'n' : 'ntype'
			\ },
			\ 'scope2kind' : {
			\ 'ctype' : 't',
			\ 'ntype' : 'n'
			\ },
			\ 'ctagsbin'  : 'gotags',
			\ 'ctagsargs' : '-sort -silent'
			\ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" general settings
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Python
autocmd BufNewFile,BufRead *.py set expandtab

" Perl
autocmd BufRead,BufNewFile *.conf,*.t,*.pm,*.manuscript set filetype=perl

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Vim colorscheme based on flatland with Airline integration.
Plug 'jordwalke/flatlandia'

" Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Additional Vim syntax highlighting for C++ (including C++11/14)
Plug 'octol/vim-cpp-enhanced-highlight'

" Fuzzy file, buffer, mru, tag, etc finder.
Plug 'ctrlpvim/ctrlp.vim'

" Tab completion of words inside of a search ('/')
Plug 'vim-scripts/SearchComplete'

" Go development plugin for Vim
Plug 'fatih/vim-go'

" A vim plugin to help you to create/update cscope database and connect to existing proper database automa
Plug 'brookhong/cscope.vim'

" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plug 'bronson/vim-trailing-whitespace'

" Initialize plugin system
call plug#end()
