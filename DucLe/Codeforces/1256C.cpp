#include <iostream>

using namespace std;
const int N = 1010;
int n, m, d, a[N], pos[N];

int main() {
    cin >> n >> m >> d;
    for (int i=1; i<=m; ++i)
        cin >> a[i];
    pos[m+1] = n + 1;
    for (int i=m; i>=1; --i)
        pos[i] = pos[i+1] - a[i];
    int duc = 0;
    for (int i=1; i<=m; ++i) {
        if (duc + d < pos[i]) {
            pos[i] = duc + d; 
        }
        duc = pos[i] + a[i] - 1;
    }
    if (duc + d > n) {
        cout << "YES\n";
        int platform = 1;
        for (int i=1; i<=n; ++i) {
            if (i < pos[platform]) 
                cout << 0 << ' ';
            else if (i <= pos[platform] + a[platform] - 1) {
                cout << platform << ' ';
                platform += i == pos[platform] + a[platform] - 1;
            }
            else cout << 0 << ' ';
        }
    } else {
        cout << "NO\n";
    }
    return 0;
}
