# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color'
alias ls='ls --color=auto'
alias vi='vim'

# start ssh-agent and read keys
eval `keychain --eval -q`
ssh-add -l || ssh-add .ssh/id_rsa

