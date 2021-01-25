while read -r line; do
	echo $line
	waybackurls $line >> urls.txt
	gau $line >> urls.txt
done < domains.txt
cat urls.txt | qsreplace $1 | grep pingb | sort -u >> ssrfurls.txt

