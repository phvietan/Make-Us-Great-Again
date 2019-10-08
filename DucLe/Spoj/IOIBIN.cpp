#include <cstring>
#include <iostream>

using namespace std;
const int N = 100005;
int label[N];

int Find_dsu(int u) {
    return (label[u] < 0) ? u : label[u] = Find_dsu(label[u]);
}

void Solve() {
    memset(label, 255, sizeof(label));
    int n;
    cin >> n;
    for (int i=0; i<n; ++i) {
        int flag, u, v;
        cin >> u >> v >> flag;
        u = Find_dsu(u);
        v = Find_dsu(v);
        if (flag == 1) {
            if (u == v) continue;
            int x = label[u] + label[v];
            if (label[u] < label[v]) {
                label[u] = v;
                label[v] = x;
            } else {
                label[v] = u;
                label[u] = x;
            }
        } else {
            cout << (int)(u == v) << endl;
        }
    }
}

int main() {
    ios_base::sync_with_stdio(false);
    Solve();
    return 0;
}
