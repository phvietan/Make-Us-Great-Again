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

struct node {
    int u, deg;
    bool operator<(const node &o) const {
        return deg < o.deg;
    }
};

int seqOneNineEight(std::vector<int> arr) {
    int n = sz(arr);
    vi diff({1, 8, 9});
    unordered_set<int> a[n]; // adjacent nodes
    FOR(i, 0, n - 1) FOR(j, i + 1, n - 1) {
        for (int k : diff) {
            if (abs(arr[i] - arr[j]) == k) {
                a[i].insert(j);
                a[j].insert(i);
                break;
            }
        }
    }

    priority_queue<node> st;
    FOR(i, 0, n - 1) {
        if (sz(a[i])) {
            st.push({i, sz(a[i])});
        }
    }

    int res = 0;
    while (!st.empty()) {
        node t = st.top(); // node with maximal degree
        st.pop();
        int u = t.u;
        if (t.deg != sz(a[u])) // old data
            continue;
        res++; // erase this node
        unordered_set<int> g(a[u]);
        for (auto it = g.begin(); it != g.end(); it++) {
            int v = *it;
            a[u].erase(v);
            a[v].erase(u);
            if (sz(a[v])) { // update this node
                st.push({v, sz(a[v])});
            }
        }
    }

    return res;
}

#ifdef debug
int main() {

    cout << seqOneNineEight(vector<int>({11, 9, 10})) << endl;

    EL;
    return 0;
}
#endif