#UWSM_USE_SESSION_SLICE=true
# autostart x at login 
#if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
#  exec startx
#fi
# end autostart

## yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# load last
source $ZSHUSERFILES/pyenv-init.zsh
source $ZSHUSERFILES/goenv-init.zsh
source $ZSHUSERFILES/ssh-agent.zsh
source /home/frank/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# user custom zsh files
source $ZSHUSERFILES/custom-common-alias.zsh
#source $ZSHUSERFILES/colorize.zsh
source $ZSHUSERFILES/custom-docker-alias.zsh
source $HOME/.autoenv/activate.sh
source $HOME/.asdf/asdf.sh
source /home/frank/.oh-my-zsh/zsh-custom-files/conda-zsh-completions.zsh
# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)
