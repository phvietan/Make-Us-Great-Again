#include <iostream>
#include <string>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

string s;

void solve() {
    int l, r, k;
    cin >> l >> r >> k;
    k %= (r - l + 1);
    l--; r--;
    string t = s.substr(l, r - l + 1);
    for (int i=0; i < r - l + 1; ++i)
        s[l+(i+k)%(r-l+1)] = t[i];
}

int main() {
    ios_base::sync_with_stdio(false);
    int t;
    cin >> s >> t;
    for (; t; --t) 
        solve();
    cout << s << endl;
    return 0;
}
