
function program_exists()
{
    program=$1
    which $1 > /dev/null
}
