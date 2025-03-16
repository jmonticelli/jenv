###############################################################################
# This install_vimrc.sh file is designed to install a Vim/Neovim configuration
# to the user home directory.
#
# This script is designed for use AS-IS, and offers no warranty and assumes no
# liability for any potential damages or problems. Use at your own risk.
#
# (C) 2025 Julian Monticelli
# Licensed under the MIT License
###############################################################################

DIR="$(dirname $0)"

mkdir -p ~/.vim

CONFIG_NVIM_INIT=~/.config/nvim/init.vim

if [ -n "$(which nvim)" ] ; then
    if [ ! -f $CONFIG_NVIM_INIT ] ; then
	mkdir -p "$(dirname $CONFIG_NVIM_INIT)"
        echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" > $CONFIG_NVIM_INIT
        echo "let &packpath=&runtimepath" >> $CONFIG_NVIM_INIT
        echo "source ~/.vimrc" >> $CONFIG_NVIM_INIT
	echo "Nvim config installed at $CONFIG_NVIM_INIT"
    else
        echo "Skipping creation of $CONFIG_NVIM_INIT because it already exists"
    fi
else
    echo "Skipping nvim install because nvim was not detected"
fi

if ! [ -f ~/.vimrc ] ; then
    ln -s "$(realpath $DIR/.vimrc)" ~/.vimrc
    echo "Created .vimrc softlink"
else
    echo "Failed to install .vimrc. File already exists"
fi
