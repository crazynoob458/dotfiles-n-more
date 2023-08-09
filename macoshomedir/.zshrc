setopt promptsubst
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase

source ~/.zsh/themes/agnoster.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/lol.plugin.zsh
source ~/.zsh/plugins/.iterm2_shell_integration.zsh

autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

if [ $ITERM_SESSION_ID ]; then
precmd() {
    echo -ne "\033]0;${PWD##*/}\007"
}
fi

pfetch
