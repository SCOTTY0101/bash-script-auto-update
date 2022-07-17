# bash-script-auto-update

This is a basic update shell script for bash (Updates pakages, upgrades packages and auto removes old packages).

Must have a basic understanding of working with the linux terminal. Try and follow the guide below or Google the problems you don't understand.



Use nano or vim for text editor (nano is more user friendly than vim. Recommend to download nano or vim cheatsheet).

Open up the terminal and enter the following....


nano update.sh  : Opens the text editor in nano and creates a update.sh file. (.sh run a shell file)

#!/bin/bash   : SHEBANG #! Path to the program to execute the update.

git fork the code   : (copy and paste the code)

CTRL + o  to save file or make your own changes, then press ENTER to save.

CTRL + x  to exit nano.

chmod a+x update.sh   : Allows system executable permission for the script.

ls -l update.sh   :verify update.sh has executable permission.

sudo ./update.sh    :Enter your sudo password and the script should run without any errors and update linux.

mkdir ~/bin   :Moves the script to your home directory.

Execute shell command with   ./<yourFileNameHere>
