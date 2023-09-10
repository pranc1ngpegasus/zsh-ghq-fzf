function ghq-fzf() {
  local target=$(ghq list --full-path | fzf-tmux --query="$LBUFFER")

  if [ -n "$target" ]; then
    BUFFER="cd ${target}"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N ghq-fzf
bindkey "^g" ghq-fzf
