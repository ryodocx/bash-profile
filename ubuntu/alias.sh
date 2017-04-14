#!/bin/bash -xe

cat << EOS >> $HOME/.profile

# alias
alias l='ls'
alias ls='ls -lahF'

EOS