#user added below
export LD_LIBRARY_PATH="/opt/cuda/lib64\ ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export OLLAMA_HOST='0.0.0.0:11434'
export GNUPGHOME="$HOME/.gnupg"
export GCM_CREDENTIAL_STORE=gpg
BROWSER=brave
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
