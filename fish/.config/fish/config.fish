if status is-interactive
# Commands to run in interactive sessions can go here
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'

	set PATH $PATH ~/.cargo/bin

	if status is-interactive
		and not set -q TMUX
		and not set -q SSH_CONNECTION
		
		exec tmux new-session -A -s main
	end
end
