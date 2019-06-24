#include <algorithm>
#include <iostream>
#include <cstdio>
#include <cstring>
#include <set>
#include <iostream>
#include <vector>

using namespace std;

#define fs first
#define sc second

typedef pair<int, int> ii;

const int oo = 2000000001;
const int N = 100005;

set <ii> F[512];
vector <int> G[512];
int c[N], d[N], cnt[512], a[N];
int n, m;

void init() {
    for (int i = 1; i <= m; ++i)
        F[d[i]].insert(ii(c[i], i));
    for (int i = 0; i < 512; ++i) {
        for (int j = 1; j <= n; ++j)
            cnt[i] += ((i & a[j]) == a[j]);
    }
}

int main() {
   // freopen("input.txt", "r", stdin);
    scanf("%d%d",&n,&m);
    for (int i = 1; i <= n; ++i) {
        int x; scanf("%d",&x);
        a[i] = 0;
        while (x--) {
            int y; scanf("%d",&y);
            a[i] |= (1 << (y-1));
        }
    }
    for (int i = 1; i <= m; ++i) {
        int x; scanf("%d %d",&c[i], &x);
        d[i] = 0;
        while (x--) {
            int y; scanf("%d",&y);
            d[i] |= (1 << (y-1));
        }
    }
    init();
    int mxPeople = 0, money = oo, temp1 = -1, temp2 = -1;
    for (int i = 0; i < 512; ++i)
    if (F[i].size())
    for (int j = 0; j < 512; ++j) {
        ii u = *F[i].begin();
        F[i].erase(u);
        if (!F[j].size()) {
            F[i].insert(u);
            continue;
        }
        ii v = *F[j].begin();
        int bit = i | j;
        F[i].insert(u);
        if (cnt[bit] > mxPeople || (cnt[bit] == mxPeople && money > u.fs + v.fs)) {
            mxPeople = cnt[bit];
            money = u.fs + v.fs;
            temp1 = u.sc;
            temp2 = v.sc;
        }
    }
    cout << temp1 << " " << temp2 << endl;
    return 0;
}
