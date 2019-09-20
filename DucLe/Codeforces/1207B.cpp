#include <iostream>
#include <vector>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

int a[51][51], b[51][51];

void solve() {
    int n, m;
    cin >> n >> m;
    for (int i=1; i<=n; ++i) 
        for (int j=1; j<=m; ++j) 
            cin >> a[i][j];
    vector<pair<int, int> > ops;

    for (int i=1; i<n; ++i)
        for (int j=1; j<m; ++j) 
            if (a[i][j] + a[i+1][j] + a[i][j+1] + a[i+1][j+1] == 4) {
                b[i][j] = b[i+1][j] = b[i][j+1] = b[i+1][j+1] = 1;
                ops.push_back(make_pair(i, j));
            }
    for (int i=1; i<=n; ++i)
        for (int j=1; j<=m; ++j)
            if (a[i][j] - b[i][j]) {
                cout << -1 << endl;
                return;
            };

    cout << ops.size()  << endl;
    for (vector<pair<int, int> >::iterator i=ops.begin(); i!=ops.end(); ++i)
        cout << i->first << ' ' << i->second << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    solve();
    return 0;
}
