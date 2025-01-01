fastfetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
#typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

export ZSH="$HOME/.oh-my-zsh"

source $ZSHUSERFILES/pyenv-init.zsh
source $ZSHUSERFILES/goenv-init.zsh
source $ZSHUSERFILES/ssh-agent.zsh

DISABLE_LS_COLORS="true"

ZSH_THEME="powerlevel10k/powerlevel10k" # set by `omz`

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    systemd
    history
    z
    colored-man-pages
    colorize
    nmap
    ssh-agent
    python
    kitty
    pass
    gpg-agent
    keychain
    sudo
    fzf
    pyenv
    asdf
    fzf-tab
    docker
    docker-compose
    extract
    ollama_zsh_completion
    autoenv
    zsh-completions
    zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/folders in terminal
alias ls='eza -a --icons=auto --sort=name --group-directories-first --grid'
alias ll='eza -al --icons=auto --sort=name --group-directories-first --grid'
alias lt='eza -a --tree --level=1 --icons'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias zshconfig='nano $HOME/.zshrc'

# user custom zsh files
source $ZSHUSERFILES/custom-common-alias.zsh
source $ZSHUSERFILES/colorize.zsh
source $ZSHUSERFILES/custom-docker-alias.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if zmodload zsh/terminfo && (( terminfo[colors] >= 256 )); then
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
else
  [[ ! -f ~/.p10k-portable.zsh ]] || source ~/.p10k-portable.zsh
fi


ZSH_THEME_PYENV_NO_SYSTEM=true

source $HOME/.autoenv/activate.sh
source $HOME/.asdf/asdf.sh

# remove $PATH ENTRIES
typeset -U path
