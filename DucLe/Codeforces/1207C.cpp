#include <iostream>

using namespace std;
const int N = 200001;

long long f[N][2];
void solve() {
    int n, a, b;
    string s;
    cin >> n >> a >> b;
    cin >> s;
    long long res = 0;
    f[0][0] = b;
    f[0][1] = 1e18;
    for (int i=1; i<=n; ++i) {
        if (s[i-1] == '0') {
            f[i][0] = min(f[i-1][0] + a + b,
                        f[i-1][1] + 2 * a + b);
            f[i][1] = min(f[i-1][0] + 2 * a + 2 * b,
                        f[i-1][1] + a + 2 * b);
        } else {
            f[i][0] = 1e18;
            f[i][1] = f[i-1][1] + a + 2 * b;
        }
    }
    cout << f[n][0] << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    int test;
    cin >> test;
    for (; test; --test) 
        solve();
    return 0;
}
