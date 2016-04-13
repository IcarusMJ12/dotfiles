export CLICOLOR=yes
export PS1=': \! \[\033[1;32m\]\u\[\033[0m\]@\[\033[1;36m\]\h\[\033[0m\]\[\033[1;37m\] $(dirs -p | tac | tr "\n" " ")\[\033[0m\]; '
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin:$PATH
export LC_ALL=C
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
alias pushd="pushd 1>/dev/null"
alias popd="popd 1>/dev/null"
alias gw.dev='ssh igor@gw.dev.nervanasys.com'
alias ls='ls --color=auto'
set -o vi
