#include <iostream>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

void solve() {
    int b, p, f, h, c;
    cin >> b >> p >> f >> h >> c;
    cout << (h > c ? (min(b/2, p) * h + min((b - min(b/2, p) * 2)/2, f) * c ) : (min(b/2, f) * c + min((b - min(b/2, f) * 2)/2, p) * h)) << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    int t;
    cin >> t;
    for (; t; t--) 
        solve();
    return 0;
}
