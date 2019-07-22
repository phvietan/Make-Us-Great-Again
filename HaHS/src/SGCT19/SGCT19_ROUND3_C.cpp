/**
 * Difficulty   : medium
 * Problem tags : flow
 *
 * Tutorial: biến thể của cặp ghép cực đại không trọng số. Tham khảo bài
 * https://vn.spoj.com/problems/MATCH1
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

const int N = 500;
int n, m, matchX[N], matchY[N], trace[N];
ii da[N], db[N];
vector<int> a[N], b[N];

int findPath() {
    queue<int> st;
    FOR(i, 1, m) trace[i] = 0;
    FOR(i, 1, n)
    if (matchX[i] == 0)
        st.push(i);
    while (!st.empty()) {
        int u = st.front();
        st.pop();
        for (auto v : a[u]) {
            if (trace[v])
                continue;
            trace[v] = u;
            if (matchY[v] == 0)
                return v;
            st.push(matchY[v]);
        }
    }
    return -1;
}

int main() {

    cin >> n;
    FOR(i, 1, n) cin >> da[i].X >> da[i].Y;
    cin >> m;
    FOR(i, 1, m) cin >> db[i].X >> db[i].Y;

    FOR(i, 1, n) FOR(j, 1, m) {
        if (da[i].Y > db[j].X && da[i].X >= db[j].Y) {
            a[i].push_back(j);
            b[j].push_back(i);
        }
    }

    for (;;) {
        int v = findPath();
        if (v == -1)
            break;
        while (v != 0) {
            int u = trace[v];
            int k = matchX[u];
            matchX[u] = v;
            matchY[v] = u;
            v = k;
        }
    }

    int res = 0;
    FOR(i, 1, n)
    if (matchX[i])
        res++;

    cout << res << endl;

    return 0;
}