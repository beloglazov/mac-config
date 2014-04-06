#!/bin/sh

brew install htop colorsvn lftp maven tree ranger colordiff ncdu fasd \
    the_silver_searcher dtrx

python wget ctags
ranger --copy-config=scope

git clone https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install
