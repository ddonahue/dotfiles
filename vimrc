" --------------- BASIC OPTIONS -------------------

"Must come first - remove strict vi compatibility mode
set nocompatible
filetype off

" this requires Vundler is installed - git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" load vim bundles using vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" add Bundles here:
" github repos
Bundle 'altercation/vim-colors-solarized'

"vim-scripts repos
" Bundle 'L9'

filetype plugin indent on

" Show line numbers
set number

" Highlight matches as you type
set incsearch

" Highlight all matches
set hlsearch

" Silence the beeping
set visualbell

" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" Enhanced command line completion.
set wildmenu
set wildmode=list:longest,list:full " Complete files like a shell.
set wildignore+=.git " Ignore .git directory in completion

" when the page starts to scroll, keep the cursor n lines from the top/bottom
set scrolloff=3

" --------------- KEY MAPPINGS -------------------

"none at the moment


" --------------- COLOR SCHEME -------------------

set t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
colorscheme solarized 	" Set color scheme to solarized dark
