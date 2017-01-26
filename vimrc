set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

" Better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes', {'do': 'ln -s ~/.vim/plugged/vim-colorschemes ~/.vim/colors'} " ALL THE COLORS!

" Character representation in decimal, octal, and hex with 'ga'
Plug 'tpope/vim-characterize'

" Git integration (displays branch for Airline)
Plug 'tpope/vim-fugitive'

" Sublime-like cursors
Plug 'terryma/vim-multiple-cursors'

" Repeat plugin actions via '.'
Plug 'tpope/vim-repeat'

" Code completion
Plug 'ervandew/supertab'

" Comment manipulation
Plug 'tomtom/tcomment_vim'

" Manipulate surrounding characters and tags
Plug 'tpope/vim-surround'

"Get trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

" All of your Plugins must be added before the following line
call plug#end()


" Leader
" " ------
let mapleader = " "
nnoremap <space> <nop>

set ignorecase
set smartcase
set incsearch

" Clear search and dismiss highlights
nnoremap <silent> <backspace> :let @/ = ""<return>

syntax on

" Number column
set number
autocmd ColorScheme * highlight LineNr ctermfg=232 ctermbg=242

set hlsearch

" ---------------
" displaying text
" ---------------

" Terminal font encoding
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8

" No comment nextline-continuation
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" Show cursor row
set cursorline
autocmd ColorScheme * highlight CursorColumn ctermbg=236

" Show cursor column
set cursorcolumn
autocmd ColorScheme * highlight CursorLine ctermbg=236

" Suggestive line stop
set colorcolumn=81
autocmd ColorScheme * highlight ColorColumn ctermbg=235

colorscheme goldenrod
highlight CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE

" Increase clipboard size
set viminfo='20,<1000,s1000

" Fix multiple cursor backspace
set backspace=indent,eol,start

" Soft-tab with 4 space default
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

augroup Tab
  " Syntax of these languages is fussy over tabs & spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

" Persist visual selection after shift
vnoremap < <gv
vnoremap > >gv

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" yank visual selection into clipboard for easy copy/paste
vnoremap <Leader>y "*y

" Always show Airline status bar
set laststatus=2
let g:airline_left_sep=''
let g:airline_right_sep=''

" Airline color theme
let g:airline_theme = 'wombat'

" Turn off auto indent
filetype indent off
