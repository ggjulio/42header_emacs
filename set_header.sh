#!/bin/bash

if [ "$#" -ne 2 ]; then
    cat << EOF
Error. Missing or too many arguments.

Usage :
      ./set_header.sh [LOGIN] [MAIL]

EOF
exit 1
fi

mkdir -p ~/.emacs.d
cp comments.el header.el init.el list.el string.el ~/.emacs.d

cat << EOF >> ~/.zshrc

# Header 42 for emacs
HEADER42_LOGIN=$1
HEADER42_MAIL=$2
export HEADER42_LOGIN HEADER42_MAIL
EOF
