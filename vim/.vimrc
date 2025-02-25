set nu
set relativenumber

highlight rCursor guifg=white guibg=red
highlight nCursor guifg=white guibg=blue
highlight iCursor guifg=blue guibg=yellow
set guicursor=n-v-c:block-nCursor-blinkon0-blinkwait0-blinkoff0,i:hor50-iCursor-blinkwait50-blinkon200-blinkoff50
" set cursorline

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set smartindent

set wrap

" CMS?set noswapfile
" CMS?set nobackup
set undodir=~/.vim/undo-dir
set undofile

set nohlsearch
set incsearch

" set termguicolors

set scrolloff=8
set signcolumn

set updatetime=50

" set colorcolumn="120"

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

" CMS mine below here
set showcmd

