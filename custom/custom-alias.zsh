#alias ai='ollama'
#alias ail='journalctl --lines=500 -fu ollama.service'
#alias nvtop='nvtop -c $HOME/.config/nvtop/interface.ini'
#alias ai-chat='interpreter -dt --model ollama/gpt-instruct'
#alias arp-local-scan='sudo arp-scan -I eth0 -l'
alias hdcheck='du -sh'
alias showenv='env |sort'
#alias showenv='for var in $(printenv); do echo $var; done |sort'
#alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias zshalias='nano $XDG_CONFIG_HOME/zsh/conf.d/custom/custom-alias.zsh'
alias nsmi='nvidia-smi'
alias zshconfig='nano $HOME/.dotfiles/.zshrc'
alias ip='ip -c '
alias pseek='pacseek'
#alias aig='gollama'
#alias aii='ingest'
alias free='free -htw'
alias lsblk='lsblk -fap'
alias inxi='inxi --color=11 '
#alias hyde='Hyde'
#alias edit-grub='sudo nano /etc/default/grub'
#alias ai-restart='sc-daemon-reload && sc-restart ollama.service'
alias dmesg='dmesg -P --time-format=reltime -x'
alias hyp='hyprctl'
alias hyd='hydectl'
#alias cat='ccat'
alias pckupg='sudo pacman -Syy && pacman -Qu'
alias ckupg='yay -Syy && yay -Qu && pckupg'
alias duf='duf -only local,network'
alias ts='tailscale'
alias tss='tailscale status'
#alias warp='warp-cli'
#alias trip='sudo trip --config-file=$XDG_CONFIG_HOME/trippy/trippy.toml'
#alias fzcat="ls --only-files | fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
#alias fzfcat="fzf --style full --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"
alias nvitop='nvitop -m compact --colorful'
alias zshp10k='nano ~/.p10k.zsh'
alias hyd-log="glow $XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/hyprland.log"

alias lzg='lazygit'
alias lzd='lazydocker'

alias ss='ss -antp4rul'

#alias gemini='gemini --model gemini-2.5-flash-lite'

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g S="| sort"
#alias -g X='| xclip -selection clipboard'
alias -g F='| fzf -m'
#alias -g K='| kitten @ send-key --match cmdline:gollama Enter'

# Functions
## yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
#---- end yazi


#fzf alias
alias fzfcat1="fzf --style full --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {},ctrl-p:preview-up,ctrl-n:preview-down,ctrl-o:execute(echo {} | xargs -o nvim)'"
alias fzfcat2="fzf --style full --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {},ctrl-p:preview-up,ctrl-n:preview-down,ctrl-o:execute(echo {} | xargs -o nvim),ctrl-c:execute(echo {} | xclip -selection clipboard)'"
alias fzfcat3="fzf --style full --preview 'fzf-preview.sh {}' --color 'hl:14,hl+:15' --bind 'focus:transform-header:file --brief {},ctrl-p:preview-up,ctrl-n:preview-down,ctrl-o:execute(echo {} | xargs -o nvim),ctrl-c:execute(echo {} | xclip -selection clipboard)'"
alias fzfcat4="fzf --style full --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {},ctrl-p:preview-up,ctrl-n:preview-down,ctrl-o:execute(echo {} | xargs -o nvim),ctrl-c:execute(echo {} | xclip -selection clipboard),?:toggle-preview'"
alias fzfcat5="fzf --style full --preview 'fzf-preview.sh {}' --color 'hl:14,hl+:15' --bind 'focus:transform-header:file --brief {},ctrl-p:preview-up,ctrl-n:preview-down,ctrl-o:execute(echo {} | xargs -o nvim),ctrl-c:execute(echo {} | xclip -selection clipboard),?:toggle-preview'"
#end
alias dcstop='docker stop $(docker ps -a -q)'
alias dcrestart='docker restart $(docker ps -a -q)'
alias dcshell='docker exec -it'
alias dtail='docker logs -f --tail="50" "$@"'
#alias dcps='docker ps --format "table {{.Names}}\t{{.Size}}\t{{.Status}}\t{{.ID}}" | tail -n +2 | sort'
alias dcps='dc-info'
alias dcdf='docker system df'

#custom function dc-autocompose
function dc-autocompose-multi () {
    # Use docker ps to list running containers, pipe the output to fzf with --multi for multiple selection
    container_ids_array=($(docker ps --format "{{.Names}}" | fzf --multi))

    # Check if any containers were selected
    if [[ -n "${container_ids_array[@]}" ]]; then
        # Run docker-autocompose with the selected container IDs
        docker run --rm -v /var/run/docker.sock:/var/run/docker.sock ghcr.io/red5d/docker-autocompose "${container_ids_array[@]}"
    else
        echo "No containers selected."
    fi
}
#end
