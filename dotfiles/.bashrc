# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alsh'

PS1='[\u@\h \W]\$ '

if command -v zoxide &> /dev/null; then
    eval "$(zoxide init bash)"
fi

if command -v fzf &> /dev/null; then
    if [[ -f /usr/share/fzf/completion.bash ]]; then
        source /usr/share/fzf/completion.bash
    fi
    if [[ -f /usr/share/fzf/key-bindings.bash ]]; then
        source /usr/share/fzf/key-bindings.bash
    fi
fi

if command -v git &> /dev/null; then
    if [[ -f /usr/share/git/completion/git-completion.bash ]]; then
        source /usr/share/git/completion/git-completion.bash
    fi
fi
