#include <iostream>
#include <vector>
#include <cmath>

using namespace std;
const int N = 100005;
int n, q, level[N] = {0};
int f[N][20] = {0};
vector<int> adj[N];

void input() {
    cin >> n >> q;
    for (int i=2; i<=n; ++i) {
        int p;
        cin >> p;
        adj[i].push_back(p);
        adj[p].push_back(i);
    }
}

void dfs(int u) { 
    for (auto v : adj[u]) {
        if (!level[v]) {
            level[v] = level[u] + 1;
            f[v][0] = u;
            dfs(v);
        }
    }
}

int LCA(int u, int v) {
    if (level[v] < level[u]) swap(u, v);

    for (int j=17; j>=0; --j) {
        if (level[v] - (1<<j) >= level[u]) {
            v = f[v][j];
        }
    }
    if (u == v) return u;

    for (int j=17; j>=0; --j) {
        if (f[u][j] && f[u][j] != f[v][j]) {
            u = f[u][j];
            v = f[v][j];
        }
    }
    return f[u][0];
}

void preLCA() {
    for (int j=1; j<=17; ++j) 
    for (int i=1; i<=n; ++i) 
        if (f[i][j-1]) {
            f[i][j] = f[f[i][j-1]][j-1]; 
        }
}

int Distance(int u, int v) {
    return level[u] + level[v] - 2*level[LCA(u, v)];   
}

void solve() {
    level[1] = 1; 
    dfs(1);
    preLCA();
    for (int i=0; i<q; ++i) {
        int a, b, c;
        cin >> a >> b >> c;
        int lca = LCA(a, b) ^ LCA(a, c) ^ LCA(b, c);
        cout << max(Distance(lca, a), max(Distance(lca, b), Distance(lca, c))) + 1 << '\n';
    }
}

int main() {
    input();
    solve(); 
    return 0;
}
