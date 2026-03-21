# These are useful when working with i3
# Copies working directory into clipboard (needs xclip)
alias cpwd='pwd | tr -d "\n"| xclip -sel c'
# cd to filepath in clipboard (needs xclip)
alias cdp='cd `xclip -selection c -o`'

# Run previous command as sudo
alias plz='sudo $(history -p !!)'

# Opens the i3config file for editing
alias i3config='vim ~/.config/i3/config'
alias vimalias='vim /home/ayilay/.bash_aliases'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'

# https://github.com/chubin/wttr.in
alias weather='curl wttr.in?m'

# cd shortcuts (I don't use these lol)
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Useful when using dd to write .img/.iso files to flash drives + SD cards
# Prints dd progress and disk-write progress
alias ddprog='sudo kill -USR1 `pidof dd`'
alias syncprog='watch grep -e Dirty: -e Writeback: /proc/meminfo'

# When ranger exits, exit in the last directory selected
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# Run df command BUT only show sdXX partitions, plus header
alias dfsda='df -h 2>/dev/null | head -n 1; df -h 2>/dev/null | \grep sd 2>/dev/null'

alias cgrep='grep -r --include="*.c"'
alias hgrep='grep -r --include="*.h"'
alias chgrep='grep -r --include="*.[ch]"'

# Re-source .bashrc and aliases
alias rs='source /home/ayilay/.bashrc; source /home/ayilay/.bash_aliases;'

alias inst='sudo apt install -y'
alias fn='find . -name'
alias ta='tmux a'

# Studid Ubuntu and its non-global python nonsense
alias venv='. ~/.venv/bin/activate'
alias pyprep='. ~/.venv/bin/activate'

