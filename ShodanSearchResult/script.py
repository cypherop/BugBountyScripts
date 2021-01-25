import json

with open('tmp.json') as f:
    data = json.load(f)

k = data['opts']['vulns']
if k:
    print(data['ip_str'] k)
