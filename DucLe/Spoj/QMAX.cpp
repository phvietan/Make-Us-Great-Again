#include <iostream>

using namespace std;
const int N = 50005;
int a[N] = {0}, T[4*N] = {0};

void Construct(int k, int l, int r) {
    if (l == r) {
        T[k] = a[l];
        return;
    }
    int m = (l + r) >> 1;
    Construct(k<<1, l, m); 
    Construct((k<<1)+1, m+1, r);
    T[k] = max(T[k<<1], T[(k<<1)+1]);
}

int Query(int k, int l, int r, int u, int v) {
    if (l > r || l > v || r < u) {
        return -1e9;
    }
    if (u <= l && r <= v) {
        return T[k];
    }
    int m = (l + r) >> 1;
    return max(Query(k<<1, l, m, u, v), Query((k<<1)+1, m+1, r, u, v));
}

int main() {
    ios_base::sync_with_stdio(false);
    int n, m, p;
    cin >> n >> m;
    for (int i=0; i<m; ++i) {
        int u, v, k;
        cin >> u >> v >> k;
        a[u] += k;
        a[v+1] -= k;
    }
    for (int i=1; i<=n; ++i)
        a[i] += a[i-1];
    Construct(1, 1, n);
    cin >> p;
    for (int i=0; i<p; ++i) {
        int u, v;
        cin >> u >> v;
        cout << Query(1, 1, n, u, v) << endl;
    }
    return 0;
}
