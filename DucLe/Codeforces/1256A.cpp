#include <iostream>

using namespace std;

void solve() {
    int a, b, n, S;
    cin >> a >> b >> n >> S;
    if (S/n <= a && S%n <= b)
        cout << "YES\n";
    else if (1ll*S-1ll*a*n > 0 &&  1ll*S-1ll*a*n <= 1ll*b)
        cout << "YES\n";
    else cout << "NO\n";
}

int main() {
    int q;
    cin >> q;
    for (; q; --q) {
        solve();
    }
    return 0;
}
