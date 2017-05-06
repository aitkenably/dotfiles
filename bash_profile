
[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# Add personal scripts to path
[[ -d "$HOME/bin" ]] && export PATH="$HOME/bin:$PATH"

export EDITOR="vim"
export VISUAL="vim"

# Set-up some aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"


# Set-up some functions 
[[ -f "$HOME/.functions" ]] && source "$HOME/.functions"

# Set-up Git autocomplete
[[ -f "$HOME/.git-completion.bash" ]] && source "$HOME/.git-completion.bash"

# Set-up Git prompt
[[ -f "$HOME/.git-prompt.sh" ]] && source "$HOME/.git-prompt.sh"

# Set prompt
export PS1='\n\[\033[35m\]\u@\h \[\033[32m\]\w\[\033[36m\]$(__git_ps1 " (%s)")\[\033[37m\]\n(\!) \$ '

# Configure Ruby Version Manager
if [ -d "$HOME/.rvm" ]; then
    export PATH="$HOME/.rvm/bin:$PATH" 
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi
