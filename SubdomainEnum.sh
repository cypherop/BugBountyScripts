./Findomain/target/release/findomain -o -t $1
amass enum -passive -norecursive -noalts -d $1 -o $1a.txt
python3 ./Sublist3r/sublist3r.py -d $1 -o $1b.txt
cat $1.txt $1a.txt $1b.txt | sort -u >> allSubdomains.txt
rm $1.txt
rm $1a.txt
rm $1b.txt
