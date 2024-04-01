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

set colorcolumn=89
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

if has("autocmd")                                                          
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif                                                        
endif 

set autoread

"custom key bindings for vim-tmux-navigator
execute "set <M-h>=\eh"
execute "set <M-j>=\ej"
execute "set <M-j>=\ek"
execute "set <M-l>=\el"
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
"Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
"Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

"distinguish M-j and ESC j to avoid mistype accent alphabets èêëì
"https://stackoverflow.com/questions/6778961/alt-key-shortcuts-not-working-on-gnome-terminal-with-vim/10216459#10216459
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set ttimeout ttimeoutlen=20
