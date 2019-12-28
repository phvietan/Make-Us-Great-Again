#include <iostream>

using namespace std;
const int N = 100010;
int n, m, d[N], a[N], passed[N];
long long sum = 0;

int check(int k) {
    int need = sum + m;
    for (int i=1; i<=m; ++i) 
        passed[i] = false;
 
    for (int i=k; i>=1; --i) {
        if (d[i] == 0)
            continue;
        else if (!passed[d[i]])
            {
                if (i < need) return false;
                need -= a[d[i]] + 1;
                passed[d[i]] = true;
            }
    }

    for (int i=1; i<=m; ++i) {
        if (!passed[i]) {
            return false;
        }
    }
    return true;
}

int main() {
    cin >> n >> m;
    for (int i=1; i<=n; ++i)
        cin >> d[i];
    for (int i=1; i<=m; ++i) {
        cin >> a[i];
        sum += a[i];
    }

    if (sum + m > n) {
        cout << -1 << endl;
        return 0;
    }

    int l = 1, r = n, result = 1e9;
    while (l <= r) {
        int mid = (l + r) / 2;
        if (check(mid)) {
            result = min(result, mid);
            r = mid - 1;
        } else {
            l = mid + 1;
        }
    }
    cout << ((result == 1e9) ? -1 : result) << endl;
    return 0;
}
