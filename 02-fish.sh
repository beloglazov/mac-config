#!/bin/sh

brew install fish
grep -q '^/usr/local/bin/fish$' /etc/shells; or echo '/usr/local/bin/fish' | \
    sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
sudo chsh -s /usr/local/bin/fish
