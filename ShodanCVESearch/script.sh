while read -r line
do
printf "%s\\n" $(dig +short "$line") >> tmp.txt
done < domains.txt

cat tmp.txt | sort -u >> ip.txt
rm tmp.txt

while read -r line
do
printf "%s " $line >> domainsWithIPs.txt
printf "%s " $(dig +short "$line") >> domainsWithIPs.txt
printf "\n" >> domainsWithIPs.txt
done < domains.txt

while read -r line
do
printf "%s " $line >> vuln.txt
shodan host $line | grep Vulnerabilities >> vuln.txt
printf "\n" >> vuln.txt
done < ip.txt

cat vuln.txt | grep Vulnerabilities | sort -u >> vulns.txt
rm vuln.txt

