#include <iostream>
#include <vector>

using namespace std;
const int N = 100010;
int n, m, father[N][18] = {0}, distanceToFather[N][18], level[N] = {0};
vector<int> adj[N];


void input() {
    cin >> n;
    for (int i=1; i<n; ++i) {
        cin >> x >> y >> z;
        adj[x].push_back(ii(y, z));
        adj[y].push_back(ii(x, z));
    }
}

void dfs(int u) {
    for (int i=0; i<adj[u]; ++i)  {
        int v = adj[i][i].first;
        if (!father[v][0]) {
            father[v][0] = u;
            level[v] = level[u] + 1;
            distanceToFather[v] = adj[u][i].second;
        }
    }
}

void solve() {
    father[1][0] = -1;
    dfs(1);
}

int main() {
    input();
    return 0;
}
