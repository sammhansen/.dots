# --- ENV ---

export MANPAGER='nvim +Man!'
export EDITOR='nvim'
export _JAVA_AWT_WM_NONREPARENTING=1

# PATH
export PATH="$HOME/.spicetify:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.pdtm/go/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"

# --- ZINIT ---

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# --- PLUGINS ---

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# --- SNIPPETS ---

zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
# update index with pkgfile --update
zinit snippet OMZP::command-not-found

# --- COMPLETION ---

autoload -U compinit && compinit
zinit cdreplay -q

# disable case sensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# highlights selected item in completion list
zstyle ':completion:*' menu select
# RAINBOW ALERT -- add colors to completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# completion for commands run with sudo
zstyle ':completion::complete:*' gain-privileges 1
# disable the default tab menu in favor of fzf-tab
zstyle ':completion:*' menu no
# enable directory preview for fzf-tab completion
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# enable preview for zoxide
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
# rehash after new binary is installed
zstyle ':completion:*' rehash true

# --- SHELL INTEGRATIONS ---

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# --- ALIASES ---

alias ls='ls --color'
alias ls='eza'
alias q='exit'
alias :q='exit'
alias l='eza'
alias la='eza -la'
alias sl='eza'
alias lg='lazygit'
alias v='nvim'
alias mkdir='mkdir -p'
alias tk='tmux kill-server'
alias zk='zellij kill-all-sessions'

alias gs='git status --short'
alias gd='git diff'
alias gc='git commit'
alias ga='git add'
alias gcl='git clone'
alias gp='git push'
alias gpm='git push -u origin main'
alias db='distrobox'
alias db-init-kali='distrobox create --name kali -i docker.io/kalilinux/kali-rolling:latest --home /home/tamara/distrobox/kali --init'
alias db-init-fedora='distrobox create --name fedora -i registry.fedoraproject.org/fedora-toolbox:latest'
alias db-init-gentoo='distrobox create --name gentoo -i docker.io/gentoo/stage3:latest --home /home/tamara/distrobox/gentoo'
alias kali='distrobox enter kali'
alias gentoo='distrobox enter gentoo'
alias fedora='distrobox enter fedora'
alias cat='bat'
alias car='bat'

alias cr='cargo run'
alias cb='cargo build'

# --- HISTORY ---

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

# append to history rather than overwriting
setopt appendhistory
# share history across all zsh sessions at the same time
setopt sharehistory
# dont add commands starting with space to history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups 
setopt hist_find_no_dups

# --- KEYBINDS ---

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

