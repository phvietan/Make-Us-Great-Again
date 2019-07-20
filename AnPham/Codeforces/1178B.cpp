#include <iostream>
#include <cstdio>
#include <algorithm>
#include <string>
#include <cstring>

using namespace std;

typedef long long ll;


string s;
int n, F[1000005];

int main() {
    freopen("input.txt", "r", stdin);
    cin >> s;
    n = s.length();
    for (int i = 1; i < n; ++i) {
        if (s[i] == s[i-1] && s[i] == 'v') {
            F[i] = F[i-1] + 1;
        }
        else F[i] = F[i-1];
    }
    ll res = 0;
    for (int i = 1; i < n; ++i) {
        if (s[i] == 'o') {
            ll lft = F[i-1];
            ll rght = F[n-1] - F[i];
            res += lft * rght;
        }
    }
    cout << res << endl;
    return 0;
}
