#include <algorithm>
#include <iostream>
#include <cstdio>
#include <string>
#include <cstring>

using namespace std;

const int N = 1000005;

string a, b, c;
int z[N*2];

void buildZ(string & c) {
    int l = 0, r = 0, m = c.length();
    z[0] = 0;
    for (int i = 1; i < m; ++i) {
        int st = 0;
        if (i <= r) st = min(r-i+1,z[i - l]);
        while (i + st < m && c[st] == c[i+st]) ++st;
        z[i] = st;
        if (i+z[i]-1 >= r) {
            l = i;
            r = i+z[i]-1;
        }
    }
}

int main() {
    freopen("input.txt", "r", stdin);
    cin >> a >> b;
    c = b + '@' + a;
    buildZ(c);
    int n = a.length(), m = b.length();
    for (int i = 0; i < n+m+1; ++i) {
        if (z[i] == m) printf("%d ", i - m);
    }

    return 0;
}
