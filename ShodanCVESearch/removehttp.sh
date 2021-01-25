while read -r line
do
awk -F/ '{print $3}' >> domains.txt
done < tmp.txt
