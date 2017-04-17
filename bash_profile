
[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# Add personal scripts to path
[[ -d "$HOME/bin" ]] && export PATH="$HOME/bin:$PATH"

# Set prompt
PS1='\W \$ '

export EDITOR="vim"
export VISUAL="vim"

# Set-up some aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"


# Set-up some functions 
[[ -f "$HOME/.functions" ]] && source "$HOME/.functions"

# Configure Ruby Version Manager
if [ -d "$HOME/.rvm" ]; then
    export PATH="$HOME/.rvm/bin:$PATH" 
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi
