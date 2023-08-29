# Setup fzf
# ---------
if [[ ! "$PATH" == *${HOMEBREW_PREFIX}/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}${HOMEBREW_PREFIX}/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${HOMEBREW_PREFIX}/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "${HOMEBREW_PREFIX}/opt/fzf/shell/key-bindings.zsh"

# Advanced customization of fzf options
# ------------
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' --bind shift-up:preview-page-up,shift-down:preview-page-down ;;
    export|unset) fzf "$@" --preview "eval 'echo \$'{}" ;;
    ssh)          fzf "$@" --preview 'dig {}' ;;
    *)            fzf "$@" ;;
  esac
}
