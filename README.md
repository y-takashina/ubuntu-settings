# ubuntu-settings
自分用の Ubuntu セットアップの流れまとめ。

## Solarized を入れる

?

## tmux の設定

Vim で ESC しようとすると少し時間が空くのでそれを直す。

```
set -s escape-time 0

set-option -g default-terminal screen-256color
set -g terminal-overrides 'xterm:colors=256'
```

## Vim の設定

Vim 設定やバックアップファイル用のディレクトリを作成

###bash
$ mkdir ~/.vim
###

.vimrc に以下のように設定

```
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
```


### Vim に Solarized を反映

## umask の設定
デフォルトで作られるファイルやディレクトリの権限を 755 にする。

```bash
$ umask      # umask の確認
0000
$ umask 0002 # umask の設定
```





