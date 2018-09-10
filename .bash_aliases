# These are useful when working with i3
# Copies working directory into clipboard (needs xclip)
alias cpwd='pwd | xclip -selection c'
# cd to filepath in clipboard (needs xclip)
alias cdp='cd `xclip -selection c -o`'

# Run previous command as sudo
alias plz='sudo $(history -p !!)'

# If you're having trouble with nautilus in i3, try uncommenting this line
#alias nautilus='nautilus --no-desktop &'

# Opens the i3config file for editing
alias i3config='vim ~/.config/i3/config'
alias vimalias='vim /home/ayilay/.bash_aliases'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'

# Re-source .bashrc and aliases
alias re-source='source /home/ayilay/.bashrc; source /home/ayilay/.bash_aliases;'

# copy directories too by default, why the hell would you not want that?
alias cp='cp -r'

# Formats code (look up astyle, it's pretty nifty)
alias myastyle='astyle --style=allman --indent=spaces=2 --convert-tabs --indent-classes --indent-switches --indent-namespaces --pad-header --pad-oper --align-pointer=type --keep-one-line-statements'

# Uncomment for using tabs instead
#alias myastyle='echo "Warning: using tabs"; astyle --style=break --indent=spaces=4 --indent-classes --indent-switches --indent-namespaces --pad-oper --unpad-paren --align-pointer=type --convert-tabs'

# Evaluates mathematical expression (From CSE15L Lab 7)
function calc {
  echo "${1}" | bc -l;
}

# Launch minecraft TODO: move to /usr/local/bin or something
# Probably not useful for you hahahaha
alias minecraft='java -jar /home/ayilay/Documents/minecraft/Minecraft.jar'


# Ronak was here
alias cl='clear'


# Try it ;)
alias weather='curl wttr.in'

# cd shortcuts (I don't use these lol)
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# The below might not be useful to you but they are nifty, I can explain them someday if you want
# prints dd progress
alias ddprog='sudo kill -USR1 `pidof dd`'
# helpful for sync command
alias syncprog='watch grep -e Dirty: -e Writeback: /proc/meminfo'

# When ranger exits, exit in the last directory selected
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# If gVim is installed, use it instead of regular vim to get clipboard support <3
if [ -n `which gvim` ]; then
    alias vim='gvim -v'
fi
