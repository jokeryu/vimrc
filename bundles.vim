set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"---------------
" Color Schemes
"---------------
Plugin 'flazz/vim-colorschemes'

"--------------
" IDE Features
"--------------
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/fcitx.vim'
Plugin 'sjl/gundo.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

"------------------
" Code Completions
"------------------
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
" Plugin 'ervandew/supertab'

"--------------
" Fast Editing
"--------------
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'godlygeek/tabular'

"-----------------
" Fast Navigation
"-----------------
Plugin 'edsono/vim-matchit'
Plugin 'Lokaltog/vim-easymotion'

"---------------
" Web Front-end
"---------------
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'nono/jquery.vim'
Plugin 'tpope/vim-haml'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'beautify-web/js-beautify'
Plugin 'marijnh/tern_for_vim'

"Haskell
Plugin 'bitc/vim-hdevtools'

"-----
" PHP
"-----
" Plugin 'spf13/PIV'

call vundle#end()            " required
filetype plugin indent on    " required
