#include <algorithm>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <cstring>
#include <string>
#include <vector>
#include <cstdio>
#include <stack>    
#include <queue>
#include <deque>
#include <ctime>
#include <cmath>
 
#define fi first
#define se second
#define pb push_back
#define debug (x) cout << x << ' ';
#define debun (x) cout << x << '\n';
 
using namespace std;
 
template <class T>
T maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
T minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }
typedef std::pair<int,int> ii;
typedef long long ll;
typedef pair<int, int> ii;
 
const int N = 100010;
int n, e[N], parent[N], level[N];
int f[N][18], f_min[N][18], f_max[N][18], res_min, res_max;
vector<ii> adj[N];
 
void enter() {
    scanf("%d", &n);
    int u, w, v;
    for (int i=0; i<n-1; ++i) {
        scanf("%d%d%d", &u, &v, &w);
        e[i] = u ^ v;
        adj[u].pb(ii(i, w));
        adj[v].pb(ii(i, w));
    }
}
void preLCA() {
    memset(f, 255, sizeof(f));
    for (int i=1; i<=n; ++i)
        f[i][0] = parent[i];
    for (int j=1; (1<<j) <=n; ++j)
        for (int i=1; i<=n; ++i)
            if (f[i][j-1] != -1)
                f[i][j] = f[f[i][j-1]][j-1],
                f_min[i][j] = min(f_min[i][j-1], f_min[f[i][j-1]][j-1]),
                f_max[i][j] = max(f_max[i][j-1], f_max[f[i][j-1]][j-1]);
}
 
int LCA(int u, int v) {
    res_min = 1e9; res_max = 0;
    if (level[u] < level[v]) swap(u, v);
    int k = 0;
    for (k=1; (1<<k) <= level[u]; ++k);
    k--;
    for (int i=k; i>=0; --i)
        if (level[u] - (1<<i) >= level[v])
            minimize(res_min, f_min[u][i]),
            maximize(res_max, f_max[u][i]),
            u = f[u][i];
    if (u == v) return u;
    for (int i=k; i>=0; --i)
        if (f[u][i] != -1 && f[u][i] != f[v][i])
            minimize(res_min, min(f_min[u][i], f_min[v][i])),
            maximize(res_max, max(f_max[u][i], f_max[v][i])),
            u = f[u][i], v = f[v][i];
    minimize(res_min, min(f_min[u][0], f_min[v][0])),
    maximize(res_max, max(f_max[u][0], f_max[v][0]));
    return f[u][0];
}
 
void process() {
    int *q = new int [n+2], u, v, l = 0, r = 0;
    q[0] = 1;
    level[1] = 0;
    parent[1] = -1;
    while (l <= r) {
        u = q[l++];
        for (vector<ii>::iterator i=adj[u].begin(); i!=adj[u].end(); ++i) {
            v = e[i->first] ^ u;
            if (parent[v]) continue;
            parent[v] = u;
            level[v] = level[u] + 1;
            f_min[v][0] = f_max[v][0] = i->second;
            q[++r] = v;
        }
    }
    delete [] q;
    preLCA();
    int num_q;
    scanf("%d", &num_q);
    for (; num_q; --num_q){
        scanf("%d%d", &u, &v);
        LCA(u, v);
        printf("%d %d\n", res_min, res_max);
    }
}
 
int main() {
    enter();
    process();
    return 0;
}
