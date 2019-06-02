
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
alias showlinode='curl -s "http://178.79.148.177/hosts.linode.183729"'
alias eppikssh='ssh -i "aws_kernix.pem" -L 8889:localhost:8888 ubuntu@ec2-52-14-168-196.us-east-2.compute.amazonaws.com'
alias reco_bnpp='ssh kernixdevaccess@139.162.219.74'
alias dev_bnpp='ssh kernixdevaccess@139.162.154.160'
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
PS1='\n`if [ $? = 0 ]; then echo "\[\e[32m\]✔"; else echo "\[\e[31m\]✘"; fi`  \[\e[01;30m\]\t\[\e[00m\] \u\[\e[01;30m\]@\h `[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "\[\e[31m\]" || echo "\[\e[32m\]"`$(__git_ps1 "{%s} \[\e[00m\]")\[\e[00m\][\[\e[01;34m\]\w\[\e[00m\]] '
export PATH=/home/pi/.local/bin:$PATH
# Load shell prompt line
source ~/.shell_prompt.sh
