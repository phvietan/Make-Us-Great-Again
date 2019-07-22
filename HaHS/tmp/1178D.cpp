#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> ii;
typedef unsigned long long ull;

#define X first
#define Y second
#define pb push_back
#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster                                                                 \
    ios_base::sync_with_stdio(false);                                          \
    cin.tie(NULL);                                                             \
    cout.tie(NULL);

const int N = 1e6 + 6;
int n, a[N], l[3][N], r[3][N];
vector<int> pos[3];

void finish(vector<int> a, int t) {
    // t = 0: abba   -> a = ba
    // t = 1: abbba  -> a = bba
    int p = sz(a) * 2 - t;
    if (p >= n / 2) {
        FOD(i, sz(a) - 1, 0) cout << char(a[i] + 'a');
        FOR(i, t, sz(a) - 1) cout << char(a[i] + 'a');
        cout << endl;
        exit(0);
    }
}

void expand(int u, int v, int i, int j, int t) {
    vector<int> res;
    res.push_back(u);
    while (i != -1 && j != -1) {
        if (l[v][i] > l[u][i] && r[v][j] < r[u][j]) {
            i = l[v][i];
            j = r[v][j];
            if (i != -1 && j != -1)
                res.push_back(v);
        } else {
            i = l[u][i];
            j = r[u][j];
            if (i != -1 && j != -1)
                res.push_back(u);
        }
    };
    finish(res, t);
}

void test(int u, int v) {
    int m = sz(pos[u]);
    if (m == 0)
        return;
    // 1 4 6 8 9, m = 5
    int c = pos[u][m / 2];
    expand(u, v, c, c, 1);
    if (m / 2 - 1 >= 0) {
        expand(u, v, pos[u][m / 2 - 1], c, 0);
    }
    if (m / 2 + 1 < m) {
        expand(u, v, c, pos[u][m / 2 + 1], 0);
    }
}

int main() {

    string s;
    getline(cin, s);
    n = sz(s);

    FOR(i, 1, n) {
        a[i] = s[i - 1] - 'a';
        pos[a[i]].push_back(i);
    }

    FOR(j, 0, 2) {
        int p = -1;
        FOR(i, 1, n) {
            l[j][i] = p;
            if (a[i] == j)
                p = i;
        }
        p = -1;
        FOD(i, n, 1) {
            r[j][i] = p;
            if (a[i] == j)
                p = i;
        }
    }

    FOR(i, 0, 2) FOR(j, i + 1, 2) {
        test(i, j);
        test(j, i);
    }

    puts("IMPOSSIBLE");

    return 0;
}
