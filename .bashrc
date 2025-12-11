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

alias ls='eza --color=auto --icons always'
alias la='eza --color=auto --icons always -la'
alias ip='ip --color'
alias ..='cd ..'
# -o without censoring
alias wtf='wtf -o'
# Install bat and bat-extras
alias cat="bat"
alias man="batman"
alias grep="batgrep"

alias ssh-h="kitten ssh anxiety@home -p 45654"
alias ssh-hh="kitten ssh anxiety@192.168.87.11 -p 45654"

PS1='[\u@\h \W]\$ '

export BAT_THEME="Monokai Extended"
export TERM=kitty
export EDITOR=nvim
