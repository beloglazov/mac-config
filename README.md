This project contains a number of shell scripts for configuring Mac OS X and its
shell.

First of all, it is necessary to Install the Command Line Tools for Xcode from
https://developer.apple.com/downloads This set of tools is a dependency of
Homebrew, the package manager we are going to use.

Next, I suggest installing iTerm2 (http://www.iterm2.com/), which provides extra
functionality over the default terminal application, such as split panes. My
color scheme for iTerm2 can be imported from `misc/beloglazov.itermcolors`.

I prefer Terminus as a terminal font. For Mac you need to install the TTF
version, which can be downloaded from:
https://aur.archlinux.org/packages/terminus-font-ttf/ I set 14pt Terminus Medium
as the regular font and 12pt Terminus Medium as the non-ASCII font in iTerm2
(both are not anti-alised).

First, clone this repository to a location you want:

```Bash
git clone https://github.com/beloglazov/mac-config.git
cd mac-config
```

Then, run the following script to install Homebrew, useful command line tools,
and configs:

```Bash
./install.sh
```

Please update `.gitconfig` with your name! It has mine by default :)

My fish shell configuration can be obtained from
https://github.com/beloglazov/fish-config

My Vim configuration can be obtained from https://github.com/beloglazov/vimrc

Reopen the shell and enjoy!


## Disable font smoothing

By default, OS X smoothes all fonts, which doesn't always make them look good
(e.g., in Eclipse). To disable smoothing, run the following:

```Bash
defaults write -g AppleFontSmoothing -int 0
defaults write -g AppleAntiAliasingThreshold -int 20
```


## Keyboard repeat rate

To increase the keyboard repeat rate and disable the accent menu, run the
following:

```Bash
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 2
```


## License

The source code is released under the Apache 2.0 license.

Copyright (C) 2014 Anton Beloglazov
