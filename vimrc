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
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T.git'
Bundle 'ervandew/supertab.git'
Bundle 'Lokaltog/vim-powerline'
Bundle 'jeffkreeftmeijer/vim-numbertoggle.git'
Bundle 'fholgado/minibufexpl.vim'

"vim-scripts repos
" Bundle 'L9'
Bundle 'bufexplorer.zip'

filetype plugin indent on

" Set leader
let mapleader=";"

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

" Set tab size
set tabstop=4 
" Set how many columns text gets indented with indent operations
set shiftwidth=4
" Don't autoconvert tabs into spaces
set noexpandtab
" Set automatic indenting
set autoindent

set laststatus=2

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

" Keep swap files in one location
set directory=$HOME/.vim/tmp

" --------------- KEY MAPPINGS -------------------

" NERDTree configuration
map <Leader>n<CR> :NERDTreeToggle<CR> 

"Command-T configuration
let g:CommandTMaxHeight=20
nnoremap <silent> <Leader>bt :CommandTBuffer<CR>
nnoremap <CR> :noh<CR><CR> 

" vim-numbertoggle configuation
let g:NumberToggleTrigger="<F2>"

"map <C-k> <C-w><Up>
"map <C-j> <C-w><Down>
"map <C-l> <C-w><Right>
"map <C-h> <C-w><Left>

let g:miniBufExplMapWindowNavVim = 1

" --------------- COLOR SCHEME -------------------

set t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
colorscheme solarized 	" Set color scheme to solarized dark

" --------------- FILE TYPE SETTINGS -------------------

" Ruby
au BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec set filetype=ruby

" Rakefile
au BufNewFile,BufRead [rR]akefile,*.rake set filetype=ruby

" IRB config
au BufNewFile,BufRead .irbrc,irbrc set filetype=ruby

" Rackup
au BufNewFile,BufRead *.ru set filetype=ruby

" Capistrano
au BufNewFile,BufRead Capfile set filetype=ruby

" Bundler
au BufNewFile,BufRead Gemfile set filetype=ruby

" Autotest
au BufNewFile,BufRead .autotest set filetype=ruby

" eRuby
au BufNewFile,BufRead *.erb,*.rhtml set filetype=eruby

" File type tab settings
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2
autocmd FileType eruby setlocal tabstop=4 shiftwidth=4


