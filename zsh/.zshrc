# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    npm
    vi-mode
    composer
    cp
    dnf
    docker
    docker-compose
    git
    httpie
    rsync
    tmux
    z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

typeset -U path cdpath fpath
path=(
    $HOME/bin 
    $HOME/.local/bin 
    $HOME/.config/composer/vendor/bin 
    $HOME/composer/vendor/bin 
    ./vendor/bin 
    /opt/homebrew/opt/php@8.3/bin 
    /opt/homebrew/opt/php@8.3/sbin 
    $path
)

setopt auto_cd
cdpath=(
    $HOME/Code
)

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

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
alias prod="git checkout master && git pull"


alias code="cd ~/Code"
alias a="php artisan"
alias c="composer"

# SSH identities
alias ssh-my="ssh-add -D && ssh-add ~/.ssh/<personal key>"
alias ssh-xx="ssh-add -D && ssh-add" # default


export PATH="/Users/pkrupa/.local/bin:$PATH"
export PATH="/Users/pkrupa/.composer/vendor/bin:$PATH"

eval "$(starship init zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
export PATH=$HOME/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
# export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"
# export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
export PATH="/opt/homebrew/opt/php@8.3/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.3/sbin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.4/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.4/sbin:$PATH"

export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql/bin:$PATH"
