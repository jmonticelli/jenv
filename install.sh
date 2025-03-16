###############################################################################
# This script calls sub-install scripts conditionally, based on the belief
# that the relevant program is installed on the system.
#
# (C) 2025 Julian Monticelli
# Licensed under the MIT License
###############################################################################

_script_dir="$(readlink -m "$(dirname "${BASH_SOURCE[0]}")")"

echo $_script_dir

source $_script_dir/bash_common.sh

if program_exists tmux ; then
    "$_script_dir"/install_tmux.sh
else
    echo "Skipping .tmux.conf install because tmux was not found"
fi

if program_exists vim || program_exists nvim ; then
    "$_script_dir"/install_vimrc.sh
else
    echo "Skipping .vimrc install because tmux was not found"
fi
