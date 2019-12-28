#include <iostream>

using namespace std;
const int N = 100001;
int n, s, a[N];

int maximize(int &a, int b) {
    if (a < b) a = b;
    else return false;
    return true;
}

void solve() {
    cin >> n >> s;
    long long sum = 0;
    int Max = 0, result = 0, maxi, resulti = 0;
    for (int i=1; i<=n; ++i) {
        cin >> a[i];
        sum += a[i];
        if (maximize(Max, a[i]))
            maxi = i;
        if (sum - Max <= s && maximize(result, i-1)) {
            resulti = maxi;
        }
    }
    if (sum <= s)
        resulti = 0;
    cout << resulti << endl;
}

int main() {
    int test;
    cin >> test;
    for (; test; --test)
        solve();
    return 0;
}
