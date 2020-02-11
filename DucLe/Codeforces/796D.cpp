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
#define mp make_pair
#define pb push_back
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
int n, k, d;
int checked[N] = {0};
int edges[N];
queue<int> Q;
vector<int> adj[N];

int main() {
    cin >> n >> k >> d;
    for (int i=0; i<k; ++i) {
        int x;
        cin >> x;
        Q.push(x);
        checked[x] = true;
    }
    for (int i=1; i<n; ++i) {
        int x, y;
        cin >> x >> y;
        edges[i] = x ^ y;
        adj[x].pb(i);
        adj[y].pb(i);
    }
    vector<int> result;
    while (!Q.empty()) {
        int u = Q.front();
        Q.pop();
        for (auto edge : adj[u]) {
            if (edges[edge] == 0) continue;
            int v = u ^ edges[edge];
            if (checked[v]) {
                if (edges[edge] == 0) continue;
                result.pb(edge);
                edges[edge] = 0;
            }
            else {
                edges[edge] = 0;
                checked[v] = true;
                Q.push(v);
            }
        }
    }

    cout << result.size() << '\n';
    for (auto i : result)
        cout << i << ' ';
    return 0;
}
