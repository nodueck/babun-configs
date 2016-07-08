set number
set autoindent " automatically set indent of new line
set smartindent

set laststatus=2 " show the status line all the time

filetype off

" no virual mode on mouse click
set mouse-=a

" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=/tmp

" tell vim where to put swap files
set dir=/tmp

" give us 256 color schemes!
set term=screen-256color

" give us nice EOL (end of line) characters
set list
set listchars=tab:▸\ ,eol:¬

"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" our plugins
Plugin 'gmarik/Vundle.vim' " vundle
Plugin 'flazz/vim-colorschemes' " nice colorschemes!
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'tpope/vim-fugitive' " the ultimate git helper

call vundle#end()
filetype plugin indent on

colorscheme wombat256
set nocompatible
set autoread " detect when a file is changed

syntax on
set encoding=utf8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>
