#include <iostream>
#include <stack>
#include <vector>

using namespace std;
const int N = 10005;
const int M = 100005;
int n, m, number = 0, counter = 0;
int num[N] = {0}, low[N], it[N] = {0}, parent[N];
vector<int> adj[N];
stack<int> _stack, recursive;

int minimize(int &a, int b) {
    if (b < a) a = b;
    else return false;
    return true;
}

void dfs(int u) {
    _stack.push(u);
    recursive.push(u);
    num[u] = low[u] = ++counter;
    while (!recursive.empty()) {
        u = recursive.top();
        for (int &i=it[u]; i<adj[u].size(); ++i) {
            int v = adj[u][i];
            if (num[v]) {
                if (parent[v] == u)
                    minimize(low[u], low[v]);
                else 
                    minimize(low[u], num[v]);
            } else {
                parent[v] = u;
                num[v] = low[v] = ++counter;
                _stack.push(v);
                recursive.push(v);
                break;
            }
        }
        if (it[u] == adj[u].size()) {
            recursive.pop();
            if (low[u] == num[u]) {
                int v;
                do {
                    v = _stack.top();
                    _stack.pop();
                    num[v] = low[v] = 1e9;
                } while (v != u);
                number++;
            }
        }
    }
}

void Input() {
    cin >> n >> m;
    for (int i=0; i<m; ++i) {
        int u, v;
        cin >> u >> v;
        adj[u].push_back(v);
    }
}

void Solve() {
    for (int i=1; i<=n; ++i)
        if (!num[i]) {
            dfs(i);
        }
    cout << number << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    Input();
    Solve();
    return 0;
}
