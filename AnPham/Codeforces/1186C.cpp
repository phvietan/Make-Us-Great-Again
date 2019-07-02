#include <algorithm>
#include <iostream>
#include <cstdio>

using namespace std;

string a, b;
int n, m;

int ord(char x) {
    return x - '0';
}

int get1() {
    int xorr = 0;
    for (int i = 0; i < m; ++i)
        xorr ^= ord(a[i]) ^ ord(b[i]);
    int cnt = xorr;
    for (int i = m; i < n; ++i) {
        xorr ^= ord(a[i]) ^ ord(a[i-m]);
        cnt += xorr;
    }
    return cnt;
}

int main() {
    freopen("input.txt", "r", stdin);
    cin >> a >> b;
    n = a.length(), m = b.length();
    cout << n - m + 1 - get1() << endl;
    return 0;
}
