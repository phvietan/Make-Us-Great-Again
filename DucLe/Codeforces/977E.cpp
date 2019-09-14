#include <iostream>
#include <vector>

using namespace std;
const int N = 200001;
int n, m, counter = 0, label[N] = {0}, isNotOk[N] = {0};
vector<int> adj[N];

void input() {
    cin >> n >> m;
    for (int i=0; i<m; ++i) {
        int x,  y;
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    } 
}

void dfs(int u) {
    label[u] = counter;
    if (adj[u].size() != 2) {
        isNotOk[counter] = true;
    }
    for (vector<int>::iterator i=adj[u].begin(); i!=adj[u].end(); ++i) {
        int v = *i;
        if (!label[v]) 
            dfs(v);
    }
}

void solve() {
    for (int i=1; i<=n; ++i)
        if (!label[i]) {
            ++counter;
            dfs(i);
        }
    int result = 0;
    for (int i=1; i<=counter; ++i) 
        result += isNotOk[i] == false;
    cout << result << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    input();
    solve();
    return 0;
}
