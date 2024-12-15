autoload -U compinit && compinit
fpath+=$ZSH/custom/plugins/conda-zsh-completion

zstyle ':completion::complete:*' use-cache 1
zstyle ":conda_zsh_completion:*" use-groups true
