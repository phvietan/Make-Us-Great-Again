#include <algorithm>
#include <iostream>
#include <vector>
#include <cstring>

using namespace std;

const int N = 2020;
int n;
int x[N], y[N], c[N], k[N];
int dsu[N];
vector<pair<long long, pair<int, int> > > edges;

int find(int u) {
    return (dsu[u] < 0) ? u : dsu[u] = find(dsu[u]);
}

int main() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        cin>> x[i] >> y[i];
    for (int i=1; i<=n; ++i)
        cin >> c[i];
    for (int i=1; i<=n; ++i)
        cin >> k[i];
    for (int i=1; i<=n; ++i)
        edges.push_back(make_pair(c[i], make_pair(0, i)));
    for (int i=1; i<=n; ++i)
        for (int j=1; j<=n; ++j)
            edges.push_back(make_pair(1ll*(k[i]+k[j])*(abs(x[i]-x[j])+abs(y[i]-y[j])), make_pair(i, j)));
    sort(edges.begin(), edges.end());
    memset(dsu, 255, sizeof(dsu));

    vector<int> station;
    vector<pair<int, int> > wire;
    long long total_cost = 0;
    int counter = 0;
    for (auto edge : edges) {
        int u = find(edge.second.first);
        int v = find(edge.second.second);
        if (u == v) continue;
        if (!(edge.second.first * edge.second.second)) {
            station.push_back(edge.second.first ^ edge.second.second);
        } else {
            wire.push_back(edge.second);
        }
        total_cost += edge.first;
        counter++;
        if (counter == n) break;
        int x = dsu[u] + dsu[v];
        if (dsu[u] < dsu[v]) {
            dsu[v] = u;
            dsu[u] = x;
        } else {
            dsu[u] = v;
            dsu[v] = x;
        }
    }
    cout << total_cost << '\n';
    cout << station.size() << '\n';
    for (auto i : station) {
        cout << i << ' ';
    }
    cout << '\n' << wire.size() << '\n';
    for (auto i : wire) {
        cout << i.first << ' ' << i.second << '\n';
    }
    return 0;
}
