# Ayilay's TODO list of stuff to install on fresh linux pc:

## Absolute Essential Installs

1. sudo (if doesn't exist)
2. vim
3. google chrome
4. Konsole terminal if gnome-terminal not present

## Config and Dotfiles

1. bashrc
2. bash_aliases
3. vimrc
4. gitconfig

## Other Necessary stuff

* git
* binutils and make
* gdb
* valgrind
* arp-scan
* java jdk latest version
* libc and g++ compilers
* xclip
* Vundle
* avr-libc and binutils-arm-none-eabi
* avrdude
* nemo
* ranger

## fstab Settings
Configure fstab to mount ntfs windows partition on boot:

`/dev/sdXX      /<MOUNT_LOC>    ntfs   rw,nodev,nosuid,uid=1000,gid=1000,uhelper=udisks2 0 1`


## Eclipse Settings

1. Install vrapper
2. Modify keybindings:

  | Action	| KeyBind |
  --- | ---
  Next Tab (when editing text) | Ctrl + Tab
  Prev Tab (when editing text) | Ctrl + Shift + Tab
  Toggle Header/Source | Ctrl + PageDown
  (idk tf this is but remove it) | Ctrl + d
  (idk tf this is but remove it) | Ctrl + e
  (idk tf this is but remove it) | Ctrl + y
  (idk tf this is but remove it) | Ctrl + v


## If using i3

1. i3config (just named config)
2. i3exit
3. i3status
