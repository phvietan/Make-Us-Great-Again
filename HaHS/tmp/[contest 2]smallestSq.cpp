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

vi retrieve(vi a, int l, int r) {
    vi res;
    unordered_set<int> st;
    res.push_back(a[l]);
    st.insert(a[l]);
    while (++l <= r) {
        if (st.count(a[l]))
            continue;
        res.push_back(a[l]);
        st.insert(a[l]);
    }
    return res;
}

bool cmp(vi a, int i1, int j1, int i2, int j2) {
    vi r1 = retrieve(a, i1, j1);
    vi r2 = retrieve(a, i2, j2);
    FOR(i, 0, sz(r1) - 1) {
        if (r1[i] < r2[i])
            return true;
        if (r1[i] > r2[i])
            return false;
    }
    return false;
}

std::vector<int> smallestSq(std::vector<int> a) {
    int n = sz(a);
    unordered_set<int> st;
    for (int x : a) st.insert(x);
    int m = sz(st);

    int l = 0, r = -1;
    unordered_map<int, int> cur;
    while (sz(cur) < m) {
        cur[a[++r]]++;
    }
    while (sz(cur) == m) {
        cur[a[l]]--;
        if (cur[a[l]] == 0) {
            cur.erase(a[l]);
        }
        l++;
    }
    cur[a[--l]]++;

    int L = l, R = r;
    cout << L << " " << R << endl;
    while (r + 1 < n) {
        while (sz(cur) == m) {
            cur[a[l]]--;
            if (cur[a[l]] == 0) {
                cur.erase(a[l]);
            }
            l++;
        }
        while (sz(cur) < m && r + 1 < n) {
            cur[a[++r]]++;
        }

        if (sz(cur) == m) {
            if (r - l < R - L) {
                L = l;
                R = r;
            } else if (r - l == R - L) {
                cout << l << " " << r << endl;
                if (cmp(a, l, r, L, R)) {
                    L = l;
                    R = r;
                }
            }
        }
    }
    // cout << L << " " << R << endl;
    vi res = retrieve(a, L, R);
    for (int x : res) cout << x << " ";
    EL;
    return res;
}

int main() {
    // smallestSq(vi({99, 98, 97, 97, 99, 97, 98, 99, 97, 97,
    //                99, 99, 97, 97, 99, 97, 98, 97, 98, 97}));

    smallestSq(vi({43, 41, 41, 1, 4, 4,  1,  50, 1,  43, 4,
                   43, 1,  13, 4, 4, 41, 50, 6,  50, 50}));

    // smallestSq(vi({}));
    // smallestSq(vi({}));
    // smallestSq(vi({}));

    EL;
    return 0;
}