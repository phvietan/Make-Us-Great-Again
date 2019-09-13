#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef vector<int> vi;
typedef pair<int, int> ii;

#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster ios_base::sync_with_stdio(false) && cin.tie(NULL)

#define debug 1

const int N = 105;
int visited[N];
vi a[N];

void dfs(int u, int flag) {
    visited[u] = flag;
    for (int v : a[u]) {
        if (!visited[v])
            dfs(v, flag);
    }
}

int test(int x) {
    int flag = visited[x];
}

int safeCells(int n, vector<vi> connections, vi locations) {
    for (vi x : connections) {
        int u = x[0], v = x[1];
        a[u].push_back(v);
        a[v].push_back(u);
    }
#ifdef debug
    FOR(i, 1, n) {
        cout << i << ": ";
        for (int j : a[i]) cout << j << " ";
        EL;
    }
#endif
    int x = locations[0];
    int y = locations[1];
    FOR(i, 1, n) visited[i] = 0;
    dfs(x, 1);
    if (!visited[y]) {
        dfs(y, 2);
    }
    int res = 0;
    FOR(i, 1, n) if (!visited[i]) res++;
    if (visited[y] == 2) {
        res += test(x);
        res += test(y);
    }
    return res;
}

#ifdef debug
int main() {

    safeCells(
        16,
        vector<vi>({vi({15, 16}), vi({13, 14}), vi({5, 9}),   vi({1, 13}),
                    vi({5, 6}),   vi({3, 15}),  vi({4, 8}),   vi({2, 14}),
                    vi({11, 15}), vi({3, 4}),   vi({6, 7}),   vi({3, 7}),
                    vi({6, 10}),  vi({13, 16}), vi({1, 2}),   vi({1, 4}),
                    vi({2, 3}),   vi({7, 8}),   vi({10, 11}), vi({5, 8}),
                    vi({9, 13}),  vi({2, 6}),   vi({7, 11}),  vi({12, 16}),
                    vi({4, 16}),  vi({10, 14}), vi({9, 12}),  vi({14, 15}),
                    vi({9, 10}),  vi({1, 5}),   vi({8, 12}),  vi({11, 12})}),
        vi({5, 16}));

    EL;
    return 0;
}
#endif