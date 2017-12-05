function wanip
	#command dig +short myip.opendns.com @resolver1.opendns.com
	command curl -s https://get.geojs.io/v1/ip
end
