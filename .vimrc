set nocompatible
set laststatus=2
set backspace=indent,eol,start
set ignorecase
set smartcase
set incsearch
"set mouse+=a


syntax enable

set nu
set showcmd
"光标所在那行划线
set cursorline
set wildmenu
set showmatch
set hlsearch

set expandtab
set tabstop=4
set smarttab

set autoindent
set shiftwidth=4

set undofile
set undodir=~/.vim/.undo
set history=1000
set autoread
set scrolloff=5

set colorcolumn=80
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

if has("autocmd")                                                          
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif                                                        
endif 

set autoread
