# ubuntu-settings
自分用の Ubuntu セットアップの流れまとめ。

## まずはこれ

このリポジトリにある以下のファイルをホームディレクトリに移す。

- .vimrc
- .tmux.conf
- .dir_colors

.bashrc については、このリポジトリのものをそのまま移してもよい気がするが、
デフォルトで少し書かれており、互換性が気になる場合は下のほうの部分だけ追記する。

## Vim の設定
Vim 設定やバックアップファイル用のディレクトリを作成

```bash
$ mkdir ~/.vim
```

## Solarized の設定
- Pathogen のインストール

```bash
$ mkdir -p ~/.vim/autoload ~/.vim/bundle && \
$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

- Solarized を .vim ディレクトリに移す

```bash
$ git clone https://github.com/altercation/vim-colors-solarized.git
$ mv vim-colors-solarized ~/.vim/bundle/
```

## umask の確認
デフォルトで作られるファイルやディレクトリの権限を 755 にしたいがデフォルトだと 777 になっている。

```bash
$ umask
0000
```


# やっていること
- Vim の設定
- umask の設定
- Solarized の導入
- tmux の設定



