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
#define mp make_pair
#define debug(x) cout << x << ' ';
#define debun(x) cout << x << '\n';

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }
typedef pair<int,int> ii;
typedef long long ll;


const int N = 300010;

priority_queue<pair<long long, ii> > Q;
int n, m, k;
int edges[N];
vector<ii> adj[N];
long long distance_[N];

void input() {
    cin >> n >> m >> k;
    for (int i=1; i<=m; ++i) {
        int x, y, w;
        cin >> x >> y >> w;
        /* adj[x].pb(mp(y, w)); */
        /* adj[y].pb(mp(x, w)); */
        edges[i] = x ^ y;
        adj[x].pb(mp(i, w));
        adj[y].pb(mp(i, w));
    }
}

void solve() {
    for (int i=1; i<=n; ++i)
        distance_[i] = 1e18;
    distance_[1] = 0;
    Q.push(mp(0, mp(1, 0))); 

    int counter = 0;
    vector<int> result;

    while (!Q.empty()) {
        int u = Q.top().second.first;
        int edge = Q.top().second.second;
        long long d = -Q.top().first;
        Q.pop();
        if (d != distance_[u]) 
            continue;

        counter++;
        if (u != 1)
            result.push_back(edge);
        if (counter == k + 1) 
            break;

        for (auto i : adj[u]) {
            int v = u ^ edges[i.first];
            if (minimize(distance_[v], d + i.second)) {
                Q.push(mp(-distance_[v], mp(v, i.first)));
            }
        }
    }
    cout << counter - 1 << '\n';
    for (auto i : result)
        cout << i << ' ';
}

int main() {
    input();
    solve();
    return 0;
}
