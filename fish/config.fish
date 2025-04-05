starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'
# fnm --log-level quiet env --use-on-cd | source # "Schniz/fnm"
direnv hook fish | source # https://direnv.net/
# fx --comp fish | source # https://fx.wtf/
set -g direnv_fish_mode eval_on_arrow # trigger direnv at prompt, and on every arrow-based directory change (default)


# fish_add_path ~/.config/bin

set -U fish_greeting
set -U fish_key_bindings fish_vi_key_bindings

set -Ux EDITOR nvim

alias tx="tmux"

alias gs="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gap="git add -p"
alias gaa="git add ."
alias wip="git commit -am \"WIP\" --no-verify"
alias gp="git push"
alias gc="git commit"
alias gmain="git checkout main && git pull origin"
alias gsync="git pull origin main"
alias cf="c c:f"
alias pst="c phpstan"
alias cout="git checkout"
alias dev="git checkout develop && git pull"
alias stage="git checkout stage && git pull"
alias prod="git checkout main && git pull"

alias code="cd ~/Code"
alias a="php artisan"
alias c="composer"

# SSH identities
alias ssh-my="ssh-add -D && ssh-add ~/.ssh/id_ed25519"

alias kt="/usr/local/bin/kafka-topics --bootstrap-server localhost:9092"

# Travelking folders
alias tk="cd ~/Code/travelking/slevoking"
alias shared="cd ~/Code/travelking/shared"

# Wanted folders
alias wntd="cd ~/Code/wanted"
alias fe="cd ~/Code/wanted/flow-executor"
alias fd="cd ~/Code/wanted/flow-dispatcher"
alias fs="cd ~/Code/wanted/flow-scheduler"
