###############################################################################
# Some common bash functions. There might not be much here now.
#
# (C) 2025 Julian Monticelli
# Licensed under the MIT License
###############################################################################

# This function is really not "correct". Functions with the same name will also
# return true.
function program_exists()
{
    program=$1
    which $1 > /dev/null
}
