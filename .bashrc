
### kanagawa dragonGreen = "#87a987"
# PS1='\[\e[38;2;135;169;135m\][\u@${WSL_DISTRO_NAME} \W]\$ \[\e[0m\]'
### dragonBlue = "#658594"
PS1='\[\e[38;2;101;133;148m\][\u@${WSL_DISTRO_NAME} \W]\$ \[\e[0m\]'

# echo -ne "\x1b[2"

# ls colors autoload
[[ -e $HOME/.config/bashrc/.dircolors ]] && eval "`dircolors --sh $HOME/.config/bashrc/.dircolors`"


[[ -e /usr/sbin/neofetch ]] && printf "\e[?12h" #&& neofetch

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"





