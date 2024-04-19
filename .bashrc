


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
date_now() {
    date '+%Y-%m-%d %H:%M:%S' 2> /dev/null
}

# PS1='\[\e[38;2;135;169;135m\][\u@${WSL_DISTRO_NAME} \W]\$ \[\e[0m\]'
### kanagawa dragonGreen = "#87a987" 
### dragonBlue = "#658594" 101;133;148
### dragonRed = "#c4746e" 196;70;110
PS1='\n$(date_now) \[\e[38;2;101;133;148m\]\u@${HOSTNAME} \[\e[38;2;135;169;135m\]\w\[\e[38;2;196;70;110m\]$(parse_git_branch)\n\[\e[0m\]\$ '

# echo -ne "\x1b[2"

alias cls="clear"

# ls colors autoload
# [[ -e ~/.config/bashrc/.dircolors ]] && eval "`dircolors --sh ~/.config/bashrc/.dircolors`"


# [[ -e /usr/sbin/neofetch ]] && printf "\e[?12h" #&& neofetch

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# nvm
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh 2> /dev/null
source /usr/share/nvm/bash_completion 2> /dev/null
source /usr/share/nvm/install-nvm-exec 2> /dev/null


