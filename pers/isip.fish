# Originally written in bash, developed by "Cowboy" Ben Alman
function isip -d 'If an IP is specified and it is bound to a network interface, echo it,
otherwise echo nothing.'
	set iplist (ifconfig -a | perl -nle'/inet (?:addr:)?(\d+\.\d+\.\d+\.\d+)/ && print $1')

	# if we've got an argument grep for that
	if count $argv >/dev/null
		echo $iplist | grep -w $argv
	else
		echo $iplist
	end
end
