
# Basic aliases 
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias l="ls -lGFh"
alias cls="clear"
alias v='view'

# Print $PATH one entry per line 
alias path="echo $PATH | tr : '\n'"

# Git
alias ga='git add'
alias gs='git status'
alias gc='git commit'
alias gm='git push origin master'

# Set prompt
export PS1="\n\u@\H in \w\n[\d \@] \! > "

# Upgrade dotfiles by reruning install script 
function dotfiles {
    wget -q -O - https://raw.githubusercontent.com/aitkenably/dotfiles/master/install.sh | bash   
}
