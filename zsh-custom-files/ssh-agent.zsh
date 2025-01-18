#zstyle :omz:plugins:ssh-agent quiet yes
#zstyle :omz:plugins:ssh-agent lazy yes
zstyle :omz:plugins:ssh-agent agent-forwarding yes
zstyle :omz:plugins:ssh-agent lifetime 24h
zstyle :omz:plugins:ssh-agent identities id_rsa eos.lan id_ed25519
#zstyle :omz:plugins:ssh-agent ssh-add-args -K -c $XDG_RUNTIME_DIR/ssh-agent.socket
