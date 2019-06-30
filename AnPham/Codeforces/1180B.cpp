#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cmath>

using namespace std;

const int N = 100005;

int n;
int a[N];

void ghi() {
    for (int i = 1; i <= n; ++i) printf("%d ", a[i]);
    printf("\n");
}

int main() {
    freopen("input.txt", "r", stdin);
    scanf("%d",&n);
    for (int i = 1; i <= n; ++i) {
        scanf("%d",&a[i]);
        if (a[i] >= 0) a[i] = -a[i] - 1;
    }
    if (n % 2 == 0) ghi();
    else {
        int mn = 0;
        for (int i = 1; i <= n; ++i) mn = min(mn, a[i]);
        for (int i = 1; i <= n; ++i)
        if (a[i] == mn) {
            a[i] = -a[i] - 1;
            break;
        }
        ghi();
    }
    return 0;
}
