# If not running interactively, don't do anything
[[ $- == *i* ]] || return

# add the gnubin to the path
# this makes gnu programs installed via brew executable without the g- prefix
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

[ -n "$PS1" ] && source ~/.bash_profile;
