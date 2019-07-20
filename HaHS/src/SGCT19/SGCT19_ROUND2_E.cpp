/**
 * Difficulty   : dễ
 * Problem tags : bfs, graph
 */

#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> ii;
typedef unsigned long long ull;

#define X first
#define Y second
#define pb push_back
#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster                                                                 \
    ios_base::sync_with_stdio(false);                                          \
    cin.tie(NULL);                                                             \
    cout.tie(NULL);

const int N = 2e5 + 5;
int m, n, x, y, tr[N];
vector<int> a[N];

int main() {

    faster;

    cin >> m >> n >> x >> y;
    FOR(i, 1, m) {
        int k;
        cin >> k;
        while (k--) {
            int j;
            cin >> j;
            a[i + n].push_back(j);
            a[j].push_back(i + n);
        }
    }

    queue<int> st;
    st.push(x);
    tr[x] = -1;
    while (!st.empty()) {
        int u = st.front();
        st.pop();
        if (u == y)
            break;
        for (int v : a[u]) {
            if (tr[v] == 0) {
                tr[v] = u;
                st.push(v);
                if (v == y)
                    break;
            }
        }
    }

    if (tr[y] == 0) {
        cout << "-1\n";
        return 0;
    }

    int res = 0;
    while (tr[y] != -1)
        res += y > n, y = tr[y];

    cout << res << endl;

    return 0;
}