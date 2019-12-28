#include <iostream>

using namespace std;
const int N = 105;
int a[N], n, nextMin[N];

int posMin(int x, int y) {
    return (a[x] < a[y]) ? x : y;
}

void solve() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
    a[n+1] = n+1;
    nextMin[n+1] = n+1;
    for (int i=n; i>=1; --i)
        nextMin[i] = (a[i] < a[nextMin[i+1]]) ? i : nextMin[i+1];
    int next_ = n+1;
    for (int i=1; i<=n; ++i) {
        if (next_ < i)
            next_ = i;
        next_ = posMin(next_, nextMin[i]);
        /* cout << i << ' ' << next_ << endl; */
        if (next_ > i && next_ <= n) {
            for (int j=next_; j>i; --j)
                swap(a[j], a[j-1]);
            int new_i = next_ - 1;
            next_ = posMin(next_, nextMin[nextMin[i]+1]);
            i = new_i;
        }
        /* for (int i=1; i<=n; ++i) */
        /*     cout << a[i] << ' '; */
        /* cout << '\n'; */
    }
    for (int i=1; i<=n; ++i)
        cout << a[i] << ' ';
    cout << '\n';
}

int main() {
    int test;
    cin >> test;
    for (; test; test--) 
        solve();
    return 0;
}
