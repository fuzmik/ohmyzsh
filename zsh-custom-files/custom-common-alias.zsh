alias ai='ollama'
alias ail='journalctl --lines=500 -fu ollama.service'
#alias nvtop='nvtop -c $HOME/.config/nvtop/interface.ini'
#alias ai-chat='interpreter -dt --model ollama/gpt-instruct'
#alias arp-local-scan='sudo arp-scan -I eth0 -l'
alias hdcheck='du -sh'
alias env='printenv > /dev/null |cat |sort'
#alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias zshalias='nano $ZSH/zsh-custom-files/custom-common-alias.zsh'
alias nsmi='nvidia-smi'
alias zshconfig='nano $HOME/.zshrc'
alias ip='ip -c '
alias pseek='pacseek'
#alias aig='gollama'
#alias aii='ingest'
alias free='free -htw'
alias lsblk='lsblk -fap'
alias inxi='inxi --color=11 '
#alias hyde='Hyde'
#alias edit-grub='sudo nano /etc/default/grub'
alias ai-restart='sc-daemon-reload && sc-restart ollama.service'
alias dmesg='dmesg -P --time-format=reltime -x'
alias hyp='hyprctl'
alias cat='ccat'
alias pckupg='sudo pacman -Syy && pacman -Qu'
alias ckupg='yay -Syy && yay -Qu && pckupg'
alias duf='duf -only local,network'

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g S="| sort"
alias -g X='| xclip -selection clipboard'
alias -g F='| fzf -m'
