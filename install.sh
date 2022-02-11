#!/usr/bin/env bash
#
# Install the terminal-utils

HERE=$(python3 -c "
from pathlib import Path
print(Path('${BASH_SOURCE[0]}').absolute().parent)
")

# link the profile scripts into ~/etc/
mkdir -p ~/etc/
for profitem in ${HERE}/etc/*; do
	if [ ! -e ~/etc/$(basename ${profitem}) ]; then
		ln -vs ${profitem} ~/etc/
	fi
done
if [ ! -e ~/.vimrc ]; then
	ln -vs ~/etc/vimrc ~/.vimrc
fi
if [ ! -e ~/.condarc ]; then
	ln -vs ~/etc/condarc ~/.condarc
fi
if [ ! -e ~/.gitconfig ]; then
	cat > ~/.gitconfig << EOF
[include]
	path = $(ls ~/etc/gitconfig)
EOF
fi
