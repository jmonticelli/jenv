###############################################################################
# This install_tmux.sh file is designed to install a tmux configuration
# to the user home directory.
#
# This script is designed for use AS-IS, and offers no warranty and assumes no
# liability for any potential damages or problems. Use at your own risk.
#
# (C) 2025 Julian Monticelli <j.m.monticelli@gmail.com>
###############################################################################

DIR="$(dirname $0)"

mkdir -p ~/.vim

if ! [ -f ~/.tmux.conf ] ; then
    ln -s "$(realpath $DIR/.tmux.conf)" ~/.tmux.conf
    echo "Created .tmux.conf softlink"
else
    echo "Failed to install .tmux.conf. File already exists"
fi
