#include <cstdio>
#include <iostream>
#include <algorithm>
#include <set>

using namespace std;

const int N = 100005;

int n, q, a[N], b[N];
set <int> s;

int convert(int x) {
    int cnt = 0;
    for (int i = 0; i < 10; ++i)
        if ((1<<i) & x) cnt ^= 1;
    return cnt;
}

void addToS(int ind) {
    if (b[ind] == 1) s.insert(ind);
}

void input() {
    s.clear();
    scanf("%d%d",&n,&q);
    for (int i = 0; i < n; ++i) {
        scanf("%d",&a[i]);
        b[i] = convert(a[i]);
        addToS(i);
    }
}

int getResult() {
    if ((s.size() & 1) == 0) return n;
    int l = *s.begin();
    int r = *s.rbegin();

    l = l+1;
    r = n-r;
    return n - min(l, r);
}

void solve() {
    while (q--) {
        int ind, v;
        scanf("%d %d",&ind, &v);
        if (b[ind] == 0) {
            a[ind] = v;
            b[ind] = convert(a[ind]);
            addToS(ind);
        } else {
            s.erase(ind);
            a[ind] = v;
            b[ind] = convert(a[ind]);
            addToS(ind);
        }
        printf("%d ", getResult());
    }
    printf("\n");
}

int main() {
    //freopen("input.txt", "r", stdin);
    int t; scanf("%d",&t);
    for (int test = 1; test <= t; ++test) {
        printf("Case #%d: ", test);
        input();
        solve();
    }
    return 0;
}
