#include <iostream>
#include <cstring>
#include <vector>

using namespace std;
const int N = 100005;
int n, ancestor[N][20], level[N];
int f[N] = {0}, sum[N] = {0};
vector<pair<int, int> > edge;
vector<int> adj[N];

void Input() {
    ios_base::sync_with_stdio(false); 
    cin >> n;
    for (int i=0; i<n-1; ++i) {
        int x, y;
        cin >> x >> y;
        edge.push_back(make_pair(x ^ y, x));
        adj[x].push_back(i);
        adj[y].push_back(i);
    }
}

void dfs(int u) {
    for (vector<int>::iterator i=adj[u].begin(); i!=adj[u].end(); ++i) {
        int v = edge[*i].first ^ u;
        if (ancestor[v][0] == -1) {
            ancestor[v][0] = u;
            level[v] = level[u] + 1;
            dfs(v);
        }
    }
}

void preLCA() {
    for (int k=1; k<20; ++k) 
    for (int i=1; i<=n; ++i) {
        if (ancestor[i][k-1] > 0) {
            ancestor[i][k] = ancestor[ancestor[i][k-1]][k-1];
        }
    }
}

int lca(int u, int v) {
    if (level[v] > level[u]) swap(u, v);
    for (int k=19; k>=0; --k)
        if (level[u] - (1<<k) >= level[v])
            u = ancestor[u][k];
    if (u == v) return u;
    for (int k=19; k>=0; --k)
        if (ancestor[u][k] != -1 && ancestor[u][k] != ancestor[v][k])
            u = ancestor[u][k], v = ancestor[v][k];
    return ancestor[u][0];
}

int retrieve(int u) {
    int res = 0;
    for (vector<int>::iterator i=adj[u].begin(); i!=adj[u].end(); ++i) {
        int v = edge[*i].first ^ u;
        if (v == ancestor[u][0]) continue;
        res += retrieve(v);
    }
    return sum[u] = res + f[u];
}

void Solve() {
    memset(ancestor, 255, sizeof(ancestor));
    level[1] = 0; ancestor[1][0] = -2;
    dfs(1);
    preLCA();
    int q;
    cin >> q;
    for (int i=0; i<q; ++i) {
        int x, y, a;
        cin >> x >> y;
        a = lca(x, y);
        f[x] += 1;
        f[y] += 1;
        f[a] -= 2;
    }
    retrieve(1);
    for (int i=0; i<n-1; ++i) {
        int x = edge[i].second, y = edge[i].second ^ edge[i].first;
        if (level[y] > level[x]) swap(x, y);
        cout << sum[x] << ' ';
    }
}

int main() {
    Input();    
    Solve();
    return 0;
}
