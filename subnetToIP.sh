nmap -sL -n $1 | awk '/Nmap scan report/{print $NF}'
