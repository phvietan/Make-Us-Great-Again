#include <iostream>

using namespace std;

void solve() {
    long long result = 0;
    int n, k;
    cin >> n;
    result = 1ll*n*(n+1)/2;
    for (k=0; 1<<k <=n; ++k);
    cout << result - 2ll*((1<<k)-1) << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    int t;
    cin >> t;
    for (int i=0; i<t; ++i) 
        solve();
    return 0;
}
