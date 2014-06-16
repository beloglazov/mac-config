set PATH /Users/anton/.cabal/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/bin /usr/local/sbin $PATH
set MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH
set -x JAVA_HOME (/usr/libexec/java_home -v 1.7)

set -gx RBENV_ROOT /usr/local/var/rbenv
. (rbenv init -|psub)
