#
# ~/.bashrc
#

eval $(starship init bash)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Create folders with the same name as a zip archive
# and unzip all zips into folders with the same name
function unzip-all-to-new() {
  for file in *.zip; do
    # Get the filename without the .zip extension
    dirname="${file%.zip}"
    # Create a directory with the filename and unzip the contents there
    mkdir -p "$dirname" && unzip "$file" -d "$dirname"
  done

}

#alias ls='ls --color=auto'
#alias la='ls -la'
alias ls=' eza --color=auto'
alias la='eza -la'
alias ip='ip --color'
alias ..='cd ..'
#alias grep='grep --color=auto'
alias figlet-larry3d='figlet -d ~/Documents/figlet-fonts/ -f larry3d'
alias starwars-telnet='telnet towel.blinkenlights.nl'
alias mount-android-mtp='jmtpfs ~/mnt'
alias astroterm='/home/anxiety/git_clones/astroterm/astroterm-linux-x86_64'
alias wtf='wtf -o'
alias radeontop='radeontop -c'
alias icat="kitten icat"
# Install bat and bat-extras
alias cat="bat"
alias man="batman"
alias grep="batgrep"

PS1='[\u@\h \W]\$ '

export BAT_THEME="Monokai Extended"
