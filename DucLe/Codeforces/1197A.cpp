#include <algorithm>
#include <iostream>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

const int N = 100010;
int n, a[N];
void solve() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
    sort(a+1, a+1+n);
    cout << max(0, min(a[n-1]-1, n-2)) << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    int t;
    cin >> t;
    for (t; t; t--) 
        solve();
    return 0;
}
