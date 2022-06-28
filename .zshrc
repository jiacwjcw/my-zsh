# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# -------------------------------------------------------------------
# Plugins
# -------------------------------------------------------------------
plugins=(
    git
    zsh-syntax-highlighting
    you-should-use $plugins
    zsh-autosuggestions
    command-not-found
)

# -------------------------------------------------------------------
# General Configurations
# -------------------------------------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/jiacw/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history ram load time)

DEFAULT_USER="jiacw"
POWERLEVEL9K_MODE='nerdfont-complete'

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export PATH="$PATH:/Users/jiacw/.local/bin"

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
    source "$HB_CNF_HANDLER";
fi


# -------------------------------------------------------------------
# Plugins Configurations
# -------------------------------------------------------------------
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh


# -------------------------------------------------------------------
# Alias
# -------------------------------------------------------------------
alias la="exa -lah"
alias man="tldr"
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"


# -------------------------------------------------------------------
# pyenv
# -------------------------------------------------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jiacw/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jiacw/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jiacw/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jiacw/google-cloud-sdk/completion.zsh.inc'; fi
