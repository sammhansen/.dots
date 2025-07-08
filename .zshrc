DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

[[ -z "${plugins[*]}" ]] && plugins=(git fzf extract)

export HISTCONTROL=ignoreboth

export HISTIGNORE="&:[bf]g:c:clear:history:exit:q:pwd:* --help"

export LESS_TERMCAP_md="$(tput bold 2> /dev/null; tput setaf 2 2> /dev/null)"
export LESS_TERMCAP_me="$(tput sgr0 2> /dev/null)"

export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

#alias open="xdg-open"
alias make="make -j`nproc`"
alias ninja="ninja -j`nproc`"
alias n="ninja"
alias x="clear"
alias rmpkg="sudo pacman -Rsn"
alias cleanch="sudo pacman -Scc"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias update="sudo pacman -Syu"
# Cleanup orphaned packages
alias cleanup="sudo pacman -Rsn $(pacman -Qtdq)"

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"


alias "ls"="eza"
alias "q"="exit"
alias ":q"="exit"
alias "l"="eza"
alias "la"="eza -la"
alias "sl"="eza"
alias "lg"="lazygit"
alias "v"="nvim"
alias "mkdir"="mkdir -p"
alias "tk"="tmux kill-server"

alias "gs"="git status"
alias "gd"="git diff"
alias "gc"="git commit"
alias "ga"="git add"
alias "gp"="git push"
alias "gpm"="git push -u origin main"
alias "db"="distrobox"
alias "db-init-kali"="distrobox create --name kali -i docker.io/kalilinux/kali-rolling:latest --init"
alias "kali"="distrobox enter kali"
alias "cat"="bat"
alias "car"="bat"
alias "code"="vscodium"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh


export FZF_BASE=/usr/share/fzf
export MANPAGER="nvim +Man!"
export EDITOR="nvim"
export _JAVA_AWT_WM_NONREPARENTING=1

export PATH="$HOME/.spicetify:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.pdtm/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
