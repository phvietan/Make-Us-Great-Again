#include <algorithm>
#include <iostream>

using namespace std;
int n, k, a[200002];

int main() {
    ios_base::sync_with_stdio(false);
    cin >> n >> k;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
    sort(a+1, a+1+n);
    a[n+1] = a[n] + 1;
    a[0] = a[1] - 1;
    if (a[k+1] != a[k])
        cout << ((0 < a[k] && a[k] <= ((int) 1e9)) ? a[k] : -1)  << endl;
    else 
        cout << -1 << endl;
    return 0;
}
