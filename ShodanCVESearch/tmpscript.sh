cat tmp.txt | grep -o ",.*" | sed -n 's/,//p' | sort -u >> ip.txt
