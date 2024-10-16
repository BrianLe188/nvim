# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.dotnet:$PATH"

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

autoload -Uz compinit && compinit

export PATH="/usr/local/opt/curl/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# open file in fzf
function of() {
  local editor="$1"
  shift  # Loại bỏ tham số đầu tiên (editor)
  local patterns=("$@")  # Lưu tất cả các pattern còn lại
  local FILE=$(fd "${patterns[@]}" | fzf --preview "cat {}")
  
  # Kiểm tra giá trị của $editor
  if [[ "$editor" == "nvim" || "$editor" == "vim" || "$editor" == "vi" ]]; then
    if [ -n "$FILE" ]; then
      $editor "$FILE"
    fi
  else
    echo "Editor not supported. Please use 'vim', 'nvim', or 'vi'."
  fi
}

# quick eval and ssh-add
function evalsshadd() {
  local who="$1"
  local kill_old="$2"
  local ssh_key="$HOME/.ssh/$who"

  # Start ssh-agent if not already running
  if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    echo "Starting ssh-agent..."
    eval `ssh-agent -s`
  fi

  # Check if the SSH key exists before adding
  if [[ -f "$ssh_key" ]]; then
    pkill ssh-agent
    ssh-add "$ssh_key"
    echo "SSH key '$ssh_key' has been added."
  else
    echo "SSH key '$ssh_key' does not exist."
  fi
}

# quick choose and open file change (git status)
# stands for: git-open-status
function gos() {
  local editor="$1"
  local FILES=$(git status --porcelain | awk '{print $2}' | fzf --multi --preview "cat {}")

  if [[ "$editor" == "nvim" || "$editor" == "vim" || "$editor" == "vi" ]]; then
    if [ -n "$FILES" ]; then
      $editor "$FILES"
    fi
  else
    echo "Editor not supported. Please use 'vim', 'nvim', or 'vi'."
  fi
}

# quick choose and open conflict file (CONFLICT)
# stands for: git-open-conflict
function goc() {
  local editor="$1"
  local FILES=$(git diff --name-only --diff-filter=U | fzf --multi --preview "cat {}")

  if [[ "$editor" == "nvim" || "$editor" == "vim" || "$editor" == "vi" ]]; then
    if [ -n "$FILES" ]; then
      $editor $FILES
    fi
  else
    echo "Editor not supported. Please use 'vim', 'nvim', or 'vi'."
  fi
}
