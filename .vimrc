syntax enable
"filetype plugin indent on

set number
set autoindent
set expandtab
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4

set textwidth=0
set nowrap

set backupdir=~/.vim
set directory=~/.vim

set showmatch
set hidden

hi Comment ctermfg=gray

execute pathogen#infect()
set background=dark
colorscheme solarized

augroup BinaryXXD
  autocmd!
  autocmd BufReadPre  *.bin let &binary =1
  autocmd BufReadPost * if &binary | silent %!xxd -g 1
  autocmd BufReadPost * set ft=xxd | endif
  autocmd BufWritePre * if &binary | %!xxd -r | endif
  autocmd BufWritePost * if &binary | silent %!xxd -g 1
  autocmd BufWritePost * set nomod | endif
augroup END





