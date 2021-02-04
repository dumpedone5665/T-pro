# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\#\[\e[0m\] \[\e[0;97m\]\Hacker\[\e[0m\] '

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

clear
echo " "
echo "   "

cowsay -f kiss @thedumpedone |lolcat

echo " "  
echo "  
           < ━━━━━━━━━━━━━ [★] O N L I N E [★] ━━━━━━━━━━━━━ > " |lolcat 
echo "     "

#COMMANDS CREATED INSIDE /ETC/BASH.BASHRC FILE
# USING ANSI COLORS
RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"


# LOGIN SCREEN MESSAGE
screenfetch
printf "${GREEN}"
printf "============================================\n"
printf "${ORANGE}"
figlet  -f standard "T-pro"
printf "${BLUE}"
printf "${GREEN}"
printf "======== Coded by Dumped One ==============\n"
printf "${STOP}"
