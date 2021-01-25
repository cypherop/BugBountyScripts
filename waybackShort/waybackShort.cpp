#include<bits/stdc++.h>

using namespace std;

int main() {
	freopen("urls.txt", "r", stdin);
	freopen("urlShorted.txt", "w", stdout);
	string s, t;
	unordered_set<string> st;
	while(cin >> s) {
		int c = 0, bl = 0, x = 0;
		t = "";
		for(auto i : s) {
			if(i == '?') {
				if(bl == 0) t += (char)('0' + x);
				bl = 1;
			}
			if(bl) {
				t += i;
				continue;
			}
			if(i == '/') {
				c++;
				if(c > 3) {
					t += (char)('0' + x);
				}
				t += '/';
				x = 0;
			} else if(c  < 3) {
				t += i;
			} else {
				x++;
			}
		}
		if(st.find(t) == st.end()) {
			st.insert(t);
			cout << s << endl;
		}
	}
}
