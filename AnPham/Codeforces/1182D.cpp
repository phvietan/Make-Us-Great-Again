#include <algorithm>
#include <cstdio>
#include <iostream>
#include <vector>
#include <cstring>

using namespace std;

const int N = 100005;

#define fs first
#define sc second
#define sz(a) (int)a.size()

bool visited[N];
int qu[N], deg[N], cnt = 0;
vector <int> adj[N];
int n;

void reset(int re) {
    for (int i = 1; i <= re; ++i) {
        int u = qu[i];
        visited[u] = false;
    }
}

bool ok(int root) {
    int re = 1;
    qu[1] = root;
    visited[root] = true;
    int L = 1, R = 1;
    while (L <= R) {
        int dg = -1;
        for (int i = L; i <= R; ++i) {
            int u = qu[i];
            for (int j = 0; j < sz(adj[u]); ++j) {
                int v = adj[u][j];
                if (!visited[v]) {
                    if (dg == -1) dg = deg[v];
                    else if (deg[v] != dg) {
                        reset(re);
                        return false;
                    }
                    visited[v] = true;
                    qu[++re] = v;
                    cnt++;
                    if (cnt >= 80000000) {
                        cout << -1 << endl;
                        exit(0);
                    }
                }
            }
        }
        L = R+1;
        R = re;
    }
    reset(re);
    return true;
}

int main() {
    //freopen("input.txt", "r", stdin);
    scanf("%d",&n);
    for (int i = 1; i < n; ++i) {
        int u, v; scanf("%d%d",&u,&v);
        adj[u].push_back(v);
        adj[v].push_back(u);
        deg[u]++; deg[v]++;
    }
    for (int i = 1; i <= n; ++i)
    if (ok(i)) {
        cout << i << endl;
        return 0;
    }
    cout << -1 << endl;
    return 0;
}
