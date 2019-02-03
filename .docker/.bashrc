# ~/.bashrc: executed by bash(1) for non-login shells.

#
# Function to get current git branch
#
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#
# Custom PS1 to avoid mistakes on other env
#
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

#
# ALIAS
#
# Put your alias here
alias ll='ls -alh'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
