#include <string>
#include <cstring>
#include <algorithm>
#include <cstdio>
#include <iostream>

using namespace std;

const int N = 1000005;
char a[N], b[N];
int LSP[N];
int n, m;

void initLSP() {
    int j = 0;
    for (int i = 1; i < m; ++i) {
        while (j && b[i] != b[j]) j = LSP[j-1];
        if (b[i] == b[j]) ++j;
        LSP[i] = j;
    }
}

void solve() {
    int j = 0;
    for (int i = 0; i < n; ++i) {
        while (j && a[i] != b[j]) j = LSP[j-1];
        if (a[i] == b[j]) ++j;
        if (j == m) {
            printf("%d ", i+2-m);
            j = LSP[j-1];
        }
    }
}

int main() {
    freopen("input.txt","r",stdin);
    scanf("%s\n",a);
    scanf("%s\n",b);
    n = strlen(a), m = strlen(b);

    initLSP();
    solve();

    return 0;
}
