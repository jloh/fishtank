function gettitle -d 'Gets title of a webpage'
	set title (curl -s "$argv" | perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si')
	echo -n "Copying title \"$title\" to clipboard..."
	echo -n $title | pbcopy
	echo "Done"
end
