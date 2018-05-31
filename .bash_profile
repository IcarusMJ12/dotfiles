export CLICOLOR=yes
export PS1=': \! \[\033[1;32m\]\u\[\033[0m\]@\[\033[1;36m\]\h\[\033[0m\]\[\033[1;37m\] $(dirs -p | tac | tr "\n" " ")\[\033[0m\]; '
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin:$PATH
export LC_ALL=C
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
alias pushd="pushd 1>/dev/null"
alias popd="popd 1>/dev/null"
alias screen="screen -U"
alias gw.dev='ssh igor@gw.dev.nervanasys.com'
alias ls='ls --color=auto'
alias screen='screen -U'
set -o vi

# bash-completion
if [[ $BASH_VERSION && $BASH_VERSION < 4.2 ]]; then  # old bash
    eval "$(register-python-argcomplete ncloud)"
else  # new bash, possibly zsh (?)
    if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
        . /opt/local/etc/profile.d/bash_completion.sh
    fi
    if [ -f /opt/local/etc/profile.d/python-argcomplete.sh ]; then
        . /opt/local/etc/profile.d/python-argcomplete.sh
    fi
fi

# FIXME: Define proxy-socks and related behaviour
# For the Intel corporate network, the unqualified hostname
# 'proxy-socks' should resolve to your site's proxy-socks host
# (assuming your site is in your resolver's search path. :) )
# Pinning to proxy-socks.sc.intel.com for now in case the host's
# search path is incorrect.
# This should be done more intelligently.
 
# Proxy settings
export https_proxy='https://proxy-chain.intel.com:911'
export http_proxy='http://proxy-chain.intel.com:912'
export ftp_proxy='http://proxy-chain.intel.com:911'
export all_proxy='socks://proxy-socks.sc.intel.com:1080/'
# FIXME Some things honor no_proxy
# Trying this - may break things - 20161018
export no_proxy='intel.com,.intel.com,localhost,127.0.0.1'
 
# Some things look for $UPPER
# FIXME: make this cleaner so we don't have to touch it twice
export HTTPS_PROXY='https://proxy-chain.intel.com:911'
export HTTP_PROXY='http://proxy-chain.intel.com:912'
export FTP_PROXY='http://proxy-chain.intel.com:911'
export ALL_PROXY='socks://proxy-socks.sc.intel.com:1080/'
# FIXME Some things honor NO_PROXY
# Trying this - may break things - 20161018
export NO_PROXY='intel.com,.intel.com,localhost,127.0.0.1'
