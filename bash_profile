
[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# Add .dotfiles bin folder to path
PATH="$PATH:$HOME/.dotfiles/bin"

# Add home directory bin folder to path
if [ -d "$HOME/bin" ]; then
    PATH="$PATH:$HOME/bin"
fi

export PATH

export EDITOR="vim"
export VISUAL="vim"

# Set-up some aliases
[[ -f "$HOME/.dotfiles/aliases" ]] && source "$HOME/.dotfiles/aliases"


# Set-up some functions 
[[ -f "$HOME/.dotfiles/functions" ]] && source "$HOME/.dotfiles/functions"

# Set-up Git autocomplete
[[ -f "$HOME/.dotfiles/git-completion.bash" ]] && source "$HOME/.dotfiles/git-completion.bash"

# Set-up Git prompt
[[ -f "$HOME/.dotfiles/git-prompt.sh" ]] && source "$HOME/.dotfiles/git-prompt.sh"

# Set prompt
export PS1='\n\[\033[35m\]\u@\h \[\033[32m\]\w\[\033[36m\]$(__git_ps1 " (%s)")\[\033[37m\]\n(\!) \$ '

# Configure Ruby Version Manager
if [ -d "$HOME/.rvm" ]; then
    export PATH="$HOME/.rvm/bin:$PATH" 
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi
