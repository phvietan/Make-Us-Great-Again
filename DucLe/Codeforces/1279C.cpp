#include <iostream>

using namespace std;
const int N = 100010;
int n, m;
int a[N], b[N], pos[N];

void solve() {
    cin >> n >> m;
    for (int i=1; i<=n; ++i)
        cin >> a[i], pos[a[i]] = i;
    for (int i=1; i<=m; ++i)
        cin >> b[i];
    long long result = 0;
    int max_pos = 0;
    for (int i=1; i<=m; ++i) {
        if (pos[b[i]] < max_pos) 
            result++;
        else {
            max_pos = pos[b[i]];
            result += (max_pos - i) * 2 + 1;
        }
    }
    cout << result << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    int test;
    cin >> test;
    for (; test; --test)
        solve();
    return 0;
}
