#include <iostream>

using namespace std;
const int N = 1002;
const int mod = 1000000007;
int n, p[N], f[N];

int main() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        cin >> p[i];
    f[1] = 0;
    for (int i=2; i<=n+1; ++i)
        f[i] = ((1ll*2*f[i-1] + 2 - f[p[i-1]]) % mod + mod) % mod;
    cout << f[n+1] << endl;
    return 0;
}
