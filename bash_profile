
[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# Add .dotfiles bin folder to path
PATH="$PATH:$HOME/.dotfiles/bin"

# Add home directory bin folder to path
if [ -d "$HOME/bin" ]; then
    PATH="$PATH:$HOME/bin"
fi

# Add caligula bin folder if it exists
if [ -d "/opt/caligula/bin" ]; then
    PATH="$PATH:/opt/caligula/bin"
fi

export PATH

export EDITOR="vim"
export VISUAL="vim"

# Set-up machine-specific variables if they exist
[[ -f "$HOME/.machine" ]] && source "$HOME/.machine"

# Set-up some aliases
[[ -f "$HOME/.dotfiles/aliases" ]] && source "$HOME/.dotfiles/aliases"

# Set-up some functions 
[[ -f "$HOME/.dotfiles/functions" ]] && source "$HOME/.dotfiles/functions"

# Set-up Git autocomplete
[[ -f "$HOME/.dotfiles/git-completion.bash" ]] && source "$HOME/.dotfiles/git-completion.bash"

# Set-up Git prompt
[[ -f "$HOME/.dotfiles/git-prompt.sh" ]] && source "$HOME/.dotfiles/git-prompt.sh"

# NICKNAME is used in the prompt. It defaults to hostname
# but can be override on individual machines 
export NICKNAME="${NICKNAME:-`hostname`}"

# Set prompt
export PS1='\n\[\033[35m\]\u@$NICKNAME \[\033[32m\]\w\[\033[36m\]$(__git_ps1 " (%s)")\[\033[37m\]\n(\!) \$ '

# Set bashmarks
[[ -f "$HOME/.dotfiles/bashmarks" ]] && source "$HOME/.dotfiles/bashmarks"

# Configure Ruby Version Manager
if [ -d "$HOME/.rvm" ]; then
    export PATH="$HOME/.rvm/bin:$PATH" 
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi
