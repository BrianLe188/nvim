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
  local FILE=$(fd | fzf)
  
  # Kiểm tra giá trị của $editor
  if [[ "$editor" == "nvim" || "$editor" == "vim" || "$editor" == "vi" ]]; then
    if [ -n "$FILE" ]; then
      $editor "$FILE"
    fi
  else
    echo "Editor not supported. Please use 'vim', 'nvim', or 'vi'."
  fi
}
