#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef vector<int> vi;
typedef pair<int, int> ii;

#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster ios_base::sync_with_stdio(false) && cin.tie(NULL)

// #define debug 1

const int N = 1005;
int n, pa[N], val[N], f[N][2];
vi a[N];

void dp(int u) {
    if (sz(a[u]) == 0) { // leaf node
        f[u][0] = val[u] == 1;
        f[u][1] = val[u] == 0;
        return;
    }
    int sum0 = 0, sum1 = 0;
    int sumM = 0, cnt0 = 0;
    for (int v : a[u]) { // visit child nodes
        dp(v);
        sum0 += f[v][0];
        sum1 += f[v][1];
        sumM += min(f[v][1], f[v][0]); // sum min selections
        cnt0 += f[v][0] < f[v][1];
    }
    f[u][1] = min(sum0, sum1) + (val[u] == 0); // all child are equal
    if (sz(a[u]) == 1) {
        // u can't be false node (0-node)
        f[u][0] = N;
    } else {
        // divide child set into 2 non-empty set including 0-nodes and 1-nodes
        if (cnt0 == sz(a[u])) {
            // all min selections are 0-node
            // greedy: 1-nodes set has only 1 node
            f[u][0] = 1e9;
            for (int v : a[u]) {
                // pop v from 0-nodes set, push to 1-nodes set
                f[u][0] = min(f[u][0], sumM - f[v][0] + f[v][1]);
            }
        } else if (cnt0 == 0) {
            // all min selections are 1-node
            // greedy: set including 0-nodes only has 1 node
            f[u][0] = 1e9;
            for (int v : a[u]) {
                // pop v from 1-nodes set, push to 0-nodes set
                f[u][0] = min(f[u][0], sumM - f[v][1] + f[v][0]);
            }
        } else {
            // not strictly, 2 set are divided optimal
            f[u][0] = sumM;
        }
        f[u][0] += (val[u] == 1);
    }
}

int equalitree(std::vector<int> parents, std::vector<bool> values) {
    n = sz(parents);
    FOR(i, 0, n - 1) {
        pa[i] = parents[i];
        val[i] = values[i];
        if (i > 0) {
            a[pa[i]].push_back(i);
        }
    }
    dp(0);
    return min(f[0][0], f[0][1]);
}

#ifdef debug
int main() {

    cout << equalitree(vi({0, 0, 0, 1}),
                       vector<bool>({true, false, false, false}));

    EL;
    return 0;
}
#endif