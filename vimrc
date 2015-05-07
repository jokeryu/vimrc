source ~/.vim/bundles.vim

"-----------------
" editor settings
"-----------------
""" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

""" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

""" enable syntax hightlight and completion
syntax on

""" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

""" search
set incsearch
" set highlight
set ignorecase
set smartcase

set history=10000
set nocompatible
" set nofoldenable
set confirm
set backspace=indent,eol,start
set mouse=a
set report=0
set number
" set relativenumber
set nowrap
set scrolloff=5
set showmatch
set matchtime=5
set matchpairs+=<:>
set showcmd
set title
set laststatus=2

""" terminal
set t_Co=256

""" indent
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
" set textwidth=78

autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,xhtml,haml setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

autocmd Syntax javascript set syntax=jquery

""" color scheme
set background=dark
colorscheme molokai

"-----------------
" Plugin Settings
"-----------------
""" Powerline
let g:Powerline_symbols='fancy'

""" NERDTree
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.swp$']
let NERDTreeSortOrder=['\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
nnoremap <F6> :NERDTreeToggle<cr>

""" NERDCommenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

""" syntastic
source ~/.vim/syntasticconf.vim

""" ctrlp
let g:ctrlp_extensions=['tag', 'buffertag', 'quickfix', 'dir',
                          \ 'line', 'mixed']

""" neocomplete
source ~/.vim/neocompleteconf.vim

""" Neosnippet
let g:neosnippet#enable_snipmate_compatibility=1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

""" supertab
" let g:SuperTabDefaultCompletionType='<c-x><c-u>'

""" gundo
nnoremap <F5> :GundoToggle<CR>

""" easymotion
nmap <Leader><Leader>s <Plug>(easymotion-sn)
xmap <Leader><Leader>s <Plug>(easymotion-sn)

""" sass-compile
let g:sass_compile_auto = 1
let g:sass_compile_file = ['scss', 'sass']
let g:sass_compile_cssdir = ['css', 'stylesheet']
let g:sass_compile_cssfile = 'style.css'
let g:sass_compile_option = '-t compressed'
let g:sass_compile_beforecmd = ''
let g:sass_compile_aftercmd = 'autoprefixer ${sasscompiledist} && notify-send "[sass] autocompile completed"'

""" js-beautify
autocmd FileType javascript noremap <leader><c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <leader><c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <leader><c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <leader><c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <leader><c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <leader><c-f> :call RangeCSSBeautify()<cr>

"------------------
" useful functions
"------------------
""" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

""" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

""" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

""" shift tabs
map <silent> <S-TAB> :tabnext<CR>

