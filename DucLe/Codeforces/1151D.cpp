#include <algorithm>
#include <iostream>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

const int N = 100001;
int n, a[N], b[N];
pair<int, int> c[N], d[N];

int main() {
    ios_base::sync_with_stdio(false);
    cin >> n;
    for (int i=1; i<=n; ++i) {
        cin >> a[i] >> b[i];
        c[i] = make_pair(-a[i] + b[i], i);
    }

    sort(c+1, c+1+n);

    long long ans = 0;
    for (int j=1; j<=n; ++j) {
        int i = c[j].second;
        ans += 1LL * a[i] * (j-1) + 1LL * b[i] * (n - j);
    }

    cout << ans << endl;
    return 0;
}
