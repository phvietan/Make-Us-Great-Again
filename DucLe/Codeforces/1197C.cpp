#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

const int N = 300001;
int n, k, a[N];

int main() {
    ios_base::sync_with_stdio(false);
    cin >> n >> k;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
    vector<int> b;
    for (int i=1; i<n; ++i)
        b.push_back(a[i] - a[i+1]);
    sort(b.begin(), b.end());
    long long ans = 0;
    for (int i=0; i<k-1; ++i)
        ans += b[i];
    ans += -a[1] + a[n];
    cout << ans << endl;
    return 0;
}
