#
# Color grep results
# Examples: http://rubyurl.com/ZXv
#
export GREP_OPTIONS='--color=auto'

if [[ "$TERM" == "xterm" ]]; then
	export GREP_COLOR='1;38;5;226'
else
	export GREP_COLOR='1;33'
fi
