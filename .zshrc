export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{208}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} '

autoload -Uz compinit && compinit

export PATH="/usr/local/opt/curl/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

# open file in fzf
function of() {
  local editor="$1"
  shift  # Loại bỏ tham số đầu tiên (editor)
  local patterns=("$@")  # Lưu tất cả các pattern còn lại
  local FILE=$(fd "${patterns[@]}" | fzf)
  
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
  
  if [[ "$kill_old" == "-r" ]]; then
    if pgrep -u "$USER" ssh-agent > /dev/null; then
      echo "Killing old ssh-agent processes..."
      pkill ssh-agent
    fi
  fi

  # Start ssh-agent if not already running
  if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    echo "Starting ssh-agent..."
    eval `ssh-agent -s`
  fi

  # Check if the SSH key exists before adding
  if [[ -f "$ssh_key" ]]; then
    ssh-add "$ssh_key"
    echo "SSH key '$ssh_key' has been added."
  else
    echo "SSH key '$ssh_key' does not exist."
  fi
}
