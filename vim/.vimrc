" filetype recognition
filetype plugin indent on

" syntax highlighting
syntax enable
colorscheme desert

" quick escape in insert mode
inoremap jk <esc>

" tab & indentation settings
set tabstop=4
set shiftwidth=4 
set softtabstop=4
set expandtab
set smarttab
set autoindent

" show line numbers
set number

" underline current line
set cursorline

" search as characters are entered
set incsearch

" match braces when cursors hover
set showmatch

" allow navigation away from an edited buffer
set hidden

" mover vertically by visual lines
nnoremap j gj
nnoremap k gk

" show status info
set ruler

" show the command typed
set showcmd

" make sure when you try to find a file, subdirectories are recursively checked
set path+=**

" command line completion on e.g. when trying to find files
set wildmenu
set wildmode=longest:full,full

" buffer shortcuts
nnoremap <space> :buffers<CR>:buffer<Space>
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <silent> <C-h> :bprevious<CR>
inoremap <silent> <C-l> <esc><C-l>
inoremap <silent> <C-h> <esc><C-h>

" backspace functionality
set backspace=indent,eol,start

" insert new line without entering insert mode
nnoremap <CR> o<Esc>0
