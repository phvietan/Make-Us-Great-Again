#include <string>
#include <iostream>

using namespace std;
int q, n;
long long k;
int next0[1000005];
string s;

void solve() {
    cin >> n >> k >> s;
    next0[n] = n;
    for (int i=n-1; i>=0; --i) 
        next0[i] = (s[i] == '0') ? i : next0[i+1];
    int count1 = 0, nextt = -1;
    for (int i=0; i<n; ++i) 
    if (s[i] - '0') {
        nextt = max(nextt, next0[i]);
        if (nextt != n && 1ll*nextt - i <= k) {
            s[i] = '0';
            s[nextt] = '1';
            k -= nextt - i;
            nextt = next0[nextt + 1];
        } 
    } 
    cout << s << '\n';
}

int main() {
    int q;
    cin >> q;
    for (; q; --q) {
        solve();
    }
    return 0;
}
