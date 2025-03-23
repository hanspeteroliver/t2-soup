#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

RED='\[\033[01;31m\]'
LIGHT_BLUE='\[\033[01;94m\]'
GREEN='\[\033[01;32m\]'
YELLOW='\[\033[01;33m\]'
BLUE='\[\033[01;34m\]'
PURPLE='\[\033[01;35m\]'
CYAN='\[\033[01;36m\]'
WHITE='\[\033[01;37m\]'
DARK_GRAY='\[\033[01;90m\]'
LIGHT_GRAY='\[\033[00;37m\]'
NO_COLOR='\[\033[0m\]'

# Funktion zur Überprüfung und Anzeige des Git-Branches, wenn nicht Root
git_branch_prompt() {
    if [ "$(id -u)" -ne 0 ]; then
        local branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
        if [ -n "$branch" ]; then
            echo " (${branch})"
        fi
    fi
}

# Funktion zur Definition des Prompts
_set_prompt() {
    local user_color=$GREEN
    local dir_color=$LIGHT_BLUE
    local git_color=$CYAN
    local reset_color=$NO_COLOR

    # Zwei-zeiliger Prompt: Zeit und User@Host in Zeile eins, Arbeitsverzeichnis und Git-Branch in Zeile zwei
    PS1="${DARK_GRAY}\t${reset_color} ${user_color}\u@\h${reset_color}:${dir_color}\w${git_color}\$(git_branch_prompt)\n${reset_color}\$ "
}

# Alias für ls mit Farbanzeige, übernommen aus deiner ursprünglichen .bashrc
alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'
alias l='ls -lav --ignore=.?*'

# Prompt-Funktion aufrufen
_set_prompt

alias soup='/usr/bin/git --git-dir=$HOME/.t2-soup/ --work-tree=$HOME'
