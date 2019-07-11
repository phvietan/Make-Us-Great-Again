#include <string>
#include <cstring>
#include <algorithm>
#include <iostream>
#include <cstdio>

using namespace std;

const int N = 50005;

int n, m, manacher[N*2];
char s[N], a[N*2];

int main() {
    freopen("input.txt", "r", stdin);
    scanf("%d\n", &n);
    scanf("%s\n", s);
    m = 0;
    for (int i = 0; i < n; ++i) {
        a[m++] = '|';
        a[m++] = s[i];
    }
    a[m++] = '|';

    for (int i = 0, ind = -1, r = -1; i < m; ++i) {
        int st = 0;
        if (i <= r) {
            int tr = ind - (i - ind);
            st = min(manacher[tr], r - i);
        }
        while (i - st >= 0 && i + st < m && a[i-st] == a[i+st]) ++st;
        manacher[i] = st-1;
        if (i + manacher[i] - 1 >= r) {
            r = i + manacher[i] - 1;
            ind = i;
        }
    }

    int mx = -1;
    for (int i = 1; i < m-1; ++i) mx = max(mx, manacher[i]);

    cout << mx << endl;

    return 0;
}
