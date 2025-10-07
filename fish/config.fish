function fish_greeting; end

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)


if status is-interactive
    eval (zellij setup --generate-auto-start fish | string collect)
end

alias ls="eza"
alias l="eza"
alias sl="eza"
alias la="eza -la"
alias :q="exit"
alias x="clear"
alias lg="lazygit"
alias v="nvim"
alias mkdir="mkdir -p"
alias tk="tmux kill-server"
alias zk="zellij kill-all-sessions"

alias car="bat"

# rust aliases
alias cr="cargo run"
alias cb="cargo build"
alias cbr="cargo build --release"
alias cbrl="cargo build --release --locked"

# git aliases
alias gs="git status --short"
alias gd="git diff"
alias gc="git commit"
alias ga="git add"
alias gcl="git clone"
alias gp="git push"
alias gpm="git push -u origin main"


starship init fish | source

# Set up fzf key bindings
fzf --fish | source

zoxide init fish | source
