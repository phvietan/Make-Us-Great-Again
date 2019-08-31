#include <iostream>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

void solve() {
    int a, b, n;
    cin >> a >> b >> n;
    int f[3];
    f[0] = a; f[1] = b;
    f[2] = a ^ b;
    cout << f[n%3] << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    int t;
    cin >> t;
    for (; t; t--) 
        solve();
    return 0;
}
