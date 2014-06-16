#!/bin/bash

export PATH=~/.cabal/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew doctor
brew update
brew tap homebrew/dupes

brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent \
    gnu-getopt grep fish htop colorsvn lftp maven tree ranger colordiff ncdu \
    fasd the_silver_searcher dtrx wget ctags vim cabal-install todo-txt

cabal update
cabal install cabal-install
cabal update
cabal install ghc-mod stylish-haskell hoogle pointfree

hoogle data

ranger --copy-config=scope

git clone https://github.com/junegunn/fzf.git ~/.fzf


cd $(dirname $BASH_SOURCE)

mkdir -p ~/.config/fish

ln -sfbv `pwd`/home/.config/fish/path.fish ~/.config/fish
ln -sfbv `pwd`/home/.Rprofile ~/
ln -sfbv `pwd`/home/.ghci ~/
ln -sfbv `pwd`/home/.gitconfig ~/
ln -sfbv `pwd`/home/.psqlrc ~/

