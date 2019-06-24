#include <algorithm>
#include <iostream>
#include <cstdio>

using namespace std;

const int N = 2005;
const int oo = 1000000000;

int t, n, m;
int trai[26], tren[26], phai[26], duoi[26];
char a[N][N];
char b[N][N];

void init(int * a, int length, int num) {
    for (int i = 0; i < length; ++i)
        a[i] = num;
}

bool inside(int x, int y) {
    return x >= 1 && x <= n && y >= 1 && y <= m;
}

int check(int ind) {
    if (trai[ind] == oo && tren[ind] == oo && duoi[ind] == 0 && phai[ind] == 0) return 0;
    bool check = trai[ind] == phai[ind] || tren[ind] == duoi[ind];
    return check ? 1 : -1;
}

void solve() {
    init(trai, 26, oo);
    init(tren, 26, oo);
    init(phai, 26, 0);
    init(duoi, 26, 0);
    //
    for (int i = 1; i <= n; ++i)
    for (int j = 1; j <= m; ++j) {
        if (a[i][j] == '.') continue;
        int x = a[i][j] - 'a';
        trai[x] = min(trai[x], j);
        tren[x] = min(tren[x], i);
        phai[x] = max(phai[x], j);
        duoi[x] = max(duoi[x], i);
    }
    //
    int mx = -1;
    for (int i = 0; i < 26; ++i) {
        int c = check(i);
        if (c == -1) {
            cout << "NO\n";
            return;
        }
        if (c == 1) mx = i;
    }
    for (int i = 0; i < 26; ++i) {
        int c = check(i);
        if (c == 0) {
            trai[i] = trai[mx];
            phai[i] = phai[mx];
            duoi[i] = duoi[mx];
            tren[i] = tren[mx];
        }
    }
    //
    for (int i = 1; i <= n; ++i)
    for (int j = 1; j <= m; ++j)
        b[i][j] = '.';
    for (int t = 0; t <= mx; ++t) {
        char c = t + 'a';
        for (int i = tren[t]; i <= duoi[t]; ++i)
        for (int j = trai[t]; j <= phai[t]; ++j)
            b[i][j] = c;
    }
    for (int i = 1; i <= n; ++i)
    for (int j = 1; j <= m; ++j)
        if (b[i][j] != a[i][j]) {
            printf("NO\n");
            return;
        }
    //
    printf("YES\n");
    printf("%d\n", mx+1);
    for (int i = 0; i <= mx; ++i) {
        printf("%d %d %d %d\n", tren[i], trai[i], duoi[i], phai[i]);
    }
}

int main() {
    //freopen("input.txt", "r", stdin);
    scanf("%d\n",&t);
    while (t--) {
        scanf("%d %d\n", &n, &m);
        for (int i = 1; i <= n; ++i)
            scanf("%s\n", a[i]+1);
        solve();
    }

    return 0;
}
