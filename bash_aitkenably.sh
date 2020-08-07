alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"

alias l="ls -lG"

alias cls="clear"

export PS1="\n\u@\H in \w\n[\d \@] \! > "

# Upgrade dotfiles by reruning install script 
function dotfiles {
    wget -q -O - https://raw.githubusercontent.com/aitkenably/dotfiles/master/install.sh | bash   
}
