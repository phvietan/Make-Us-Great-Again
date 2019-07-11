#include <cstdio>
#include <algorithm>
#include <iostream>
#include <cstring>
#include <string>
#include <cmath>

using namespace std;

const int N = 200005;
int F[N][26];
string s;
int n, dem[26];

void init() {
    memset(F, 0, sizeof F);
    F[0][s[0] - 'a'] = 1;
    for (int i = 1; i < n; ++i) {
        for (char j = 'a'; j <= 'z'; ++j)
            F[i][j-'a'] = F[i-1][j-'a'];
        F[i][s[i]-'a']++;
    }
}

bool ok(int len) {
    for (int i = 0; i < 26; ++i)
        if (dem[i] > F[len][i]) return false;
    return true;
}

int solve(string & a) {
    int L = 0, R = n, res = -1;
    while (L <= R) {
        int M = (L+R)>>1;
        if (ok(M)) {
            res = M;
            R = M - 1;
        } else L = M+1;
    }
    return res + 1;
}

int main() {
    freopen("input.txt", "r", stdin);
    cin >> n;
    cin >> s;
    init();
    int q;
    cin >> q;
    while (q--) {
        string s2; cin >> s2;
        memset(dem, 0, sizeof dem);
        for (int i = 0; i < s2.length(); ++i)
            dem[s2[i]-'a']++;
        printf("%d\n", solve(s2));
    }
    return 0;
}
