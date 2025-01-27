# remove $PATH ENTRIES
typeset -U path
#user added below
export PATH="$PATH:/home/frank/.local/bin"
export LD_LIBRARY_PATH="/opt/cuda/lib64\ ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export OLLAMA_HOST='0.0.0.0:11434'
export GNUPGHOME="$HOME/.gnupg"
export GCM_CREDENTIAL_STORE='gpg'
export BROWSER='brave'
#EDITOR=codium
export ZSHUSERFILES="$HOME/.oh-my-zsh/zsh-custom-files"
#export BAT_CONFIG_PATH="$HOME/.config/bat"
#export OLLAMA_MODEL="qwen2.5:3b-instruct-q4_K_M"
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
#export DOCKER_HOST=ssh://frank@docker.lan

export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME=.tool-versions
export ASDF_DATA_DIR=/home/frank/.asdf
export ASDF_DIR=/home/frank/.asdf
export ASDF_CONFIG_FILE=/home/frank/.asdfrc

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export WEB_SEARCH_MODEL='gemini:gemini-1.5-flash-latest'
export FZF_BASE=/usr/share/fzf
