
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi
complete -W "$(echo `curl -s "http://178.79.148.177/hosts.linode.183729" | cut -f 2 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

export HISTTIMEFORMAT='%Y/%m/%d @ %T '
HISTSIZE=50000
HISTFILESIZE=50000
alias ls='ls -G'
alias ll='ls -l -G -A'
alias cdw='cd ~/Sites/'
alias grep='grep --color=auto'
alias rpurge='find . -type f \( -name ".*~" -o -name "*.bak" -o -name "*~" -o -name "#*" \) -print -exec rm {} \;'
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
PS1='\n`if [ $? = 0 ]; then echo "\[\e[32m\]✔"; else echo "\[\e[31m\]✘"; fi`  \[\e[01;30m\]\t\[\e[00m\] \u\[\e[01;30m\]@\h `[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "\[\e[31m\]" || echo "\[\e[32m\]"`$(__git_ps1 "{%s} \[\e[00m\]")\[\e[00m\][\[\e[01;34m\]\w\[\e[00m\]] '

# Load shell prompt line
source ~/.shell_prompt.sh
