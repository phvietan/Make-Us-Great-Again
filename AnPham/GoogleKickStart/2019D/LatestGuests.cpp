#include <cstdio>
#include <algorithm>
#include <iostream>
#include <cstring>
#include <map>
#include <vector>

using namespace std;

typedef long long ll;
typedef pair<int,int> ii;

int convertGroup(char g) {
    return (g == 'A') ? 0 : 1;
}

const int N = 100005;

int n, g, m, tmpVal;
int ind[N], gr[N];
map <ii, int> F;
map <ii, bool> check;
vector <int> a[2];

void input() {
    scanf("%d%d%d",&n,&g,&m);
    F.clear();
    check.clear();
    a[0].clear();
    a[1].clear();
    for (int i = 1; i <= g; ++i) {
        char g;
        scanf("%d %c\n", &ind[i], &g);
        gr[i] = convertGroup(g);

        ii cur = ii(ind[i], gr[i]);
        if (!check[cur]) {
            check[cur] = true;
            F[cur] = 0;
            a[gr[i]].push_back(ind[i]);
        }
    }
    sort(a[0].begin(), a[0].end());
    sort(a[1].begin(), a[1].end());
}

int tinhRevert(int src, int dest, int sz) {
    return sz - abs(src - dest);
}

int tinhDung(int src, int dest, int sz) {
    return abs(dest - src);
}

int tim0(int gr, int L, int R, int index, int type ) {
    int res = -1;
    while (L <= R) {
        int M = (L+R)>>1;
        int val = (type == 0) ? tinhRevert(a[gr][M], index, n) : tinhDung(a[gr][M], index, n);
        if (val <= m) {
            tmpVal = val;
            res = M;
            L = M+1;
        }
        else R = M-1;
    }
    return res;
}

int tim1(int gr, int L, int R, int index, int type ) {
    int res = -1;
    while (L <= R) {
        int M = (L+R)>>1;
        int val = (type == 0) ? tinhRevert(a[gr][M], index, n) : tinhDung(a[gr][M], index, n);
        if (val <= m) {
            tmpVal = val;
            res = M;
            R = M-1;
        }
        else L = M+1;
    }
    return res;
}

int getLatest0(int gr, int index) {
    int k = lower_bound(a[gr].begin(), a[gr].end(), index) - a[gr].begin();
    int findOccur = tim0(gr, 0, k-1, index, 0);
    if (findOccur == -1) {
        findOccur = tim0(gr, k, a[gr].size()-1, index, 1);
    }
    return findOccur;
}

int getLatest1(int gr, int index) {
    int k = upper_bound(a[gr].begin(), a[gr].end(), index) - a[gr].begin();
    int findOccur = tim1(gr, k, a[gr].size()-1, index, 0);
    if (findOccur == -1) {
        findOccur = tim1(gr, 0, k-1, index, 1);
    }
    return findOccur;
}

bool getAnswer(int latest0, int val0, int latest1, int val1) {
    if (latest0 == -1 && latest1 == -1) return false;
    if (latest0 != -1 && latest1 != -1) {
        if (val0 == val1) {
            F[ii(a[0][latest0], 0)] += 1;
            F[ii(a[1][latest1], 1)] += 1;
        }
        else if (val0 > val1) F[ii(a[0][latest0], 0)] += 1;
        else F[ii(a[1][latest1], 1)] += 1;
    }
    else if (latest0 != -1) F[ii(a[0][latest0], 0)] += 1;
    else F[ii(a[1][latest1], 1)] += 1;

    return true;
}

void solve() {
    for (int i = 1; i <= n; ++i) {
        int tmpm = m;
        m %= n;
        int latest0 = getLatest0(0, i); int val0 = tmpVal;
        int latest1 = getLatest1(1, i); int val1 = tmpVal;
        m = tmpm;

        //cout << ((latest0 == -1) ? -1 : a[0][latest0]) << " " << ((latest1 == -1) ? -1 : a[1][latest1]) << endl;

        bool f = getAnswer(latest0, val0, latest1, val1);
        if (!f) {
            latest0 = getLatest0(0, i); val0 = tmpVal;
            latest1 = getLatest1(1, i); val1 = tmpVal;
            //cout << ((latest0 == -1) ? -1 : a[0][latest0]) << " " << ((latest1 == -1) ? -1 : a[1][latest1]) << endl;
            getAnswer(latest0, val0, latest1, val1);
        }
    }
    for (int i = 1; i <= g; ++i) {
        printf("%d ", F[ii(ind[i], gr[i])]);
    }
}

int main() {
    freopen("input.txt", "r", stdin);
    int t; scanf("%d",&t);
    for (int test = 1; test <= t; ++test) {
        printf("Case #%d: ", test);
        input();
        solve();
        printf("\n");
    }
    return 0;
}
