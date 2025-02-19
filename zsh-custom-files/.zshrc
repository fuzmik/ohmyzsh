fastfetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=verbose

export ZSH="$HOME/.oh-my-zsh"


ZSH_WEB_SEARCH_ENGINES=(
	searx "https://searxng.ovcn.ddnsfree.com/search?q="
	)

DISABLE_LS_COLORS="true"

ZSH_THEME="powerlevel10k/powerlevel9k" # set by `omz`

plugins=(
    git
    systemd
    history
    z
    colored-man-pages
    python
    kitty
    gpg-agent
    sudo
    pyenv
    asdf
    docker
    docker-compose
    extract
    ollama_zsh_completion
    autoenv
    zsh-completions
    conda
    colorize
    zsh-autosuggestions
    nmap
    command-not-found
    ssh-agent
    tailscale
    jsontools
    rbw
    zsh-syntax-highlighting
    fast-syntax-highlighting
    web-search
    fzf-tab
    ruby
    npm
    gitignore
    node
    nvm
    fzf
)
#autoload -Uz compinit; compinit

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src:/home/frank/.asdf/installs/bat/0.25.0/autocomplete:$fpath

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

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias zshconfig='nano $HOME/.zshrc'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if zmodload zsh/terminfo && (( terminfo[colors] >= 256 )); then
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
else
  [[ ! -f ~/.p10k-portable.zsh ]] || source ~/.p10k-portable.zsh
fi

#export ZSH_THEME_PYENV_NO_SYSTEM=true

#alias cat='glow'
alias ask='echo $1'
alias -g TT='|gollama --model MFDoom/deepseek-r1-tool-calling:1.5b'


eval "$(direnv hook zsh)"

# bun completions
[ -s "/home/frank/.bun/_bun" ] && source "/home/frank/.bun/_bun"

# navi widget
eval "$(navi widget zsh)"

# fzf-tab
source /home/frank/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.plugin.zsh
#autoload -Uz compinit; compinit
autoload -U compinit; compinit
# end fzf-tab
