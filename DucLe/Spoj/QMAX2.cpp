#include <iostream>

using namespace std;
const int N = 50005;
int a[N], T[4*N] = {0}, lazy[4*N] = {0};

void Update(int k, int l, int r, int u, int v, int value) {
    if (l < r) {
        lazy[k << 1] += lazy[k];
        lazy[(k << 1) + 1] += lazy[k];
    }
    T[k] += lazy[k];
    lazy[k] = 0;
    if (l > v || r < u) return;
    if (u <= l && r <= v) {
        T[k] += value;
        if (l < r) {
            lazy[k<<1] += value;
            lazy[(k<<1)+1] += value;
        }
        return;
    }
    if (l != r) {
        int m = (l + r) >> 1;
        Update(k << 1, l, m, u, v, value);
        Update((k << 1) + 1, m + 1, r, u , v, value);
        T[k] = max(T[k << 1], T[(k << 1) + 1]);
    }
}

int Query(int k, int l, int r, int u, int v) {
    if (l < r) {
        lazy[k << 1] += lazy[k];
        lazy[(k << 1) + 1] += lazy[k];
    }
    T[k] += lazy[k];
    lazy[k] = 0;
    if (l > v || r < u) return -1e9;
    if (u <= l && r <= v) return T[k];
    if (l != r) {
        int m = (l + r) >> 1;
        return max(Query(k << 1, l, m, u, v), Query((k << 1) + 1, m + 1, r, u, v));
    }
}

int main() {
    ios_base::sync_with_stdio(false);
    int n, m;
    cin >> n >> m;
    for (int i=0; i<m; ++i) {
        int type, u, v, k;
        cin >> type;
        if (type) {
            cin >> u >> v;
            cout << Query(1, 1, n, u, v) << endl;
        } else {
            cin >> u >> v >> k;
            Update(1, 1, n, u, v, k);
        }
    }
    return 0;
}
