#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> ii;
typedef unsigned long long ull;

#define X first
#define Y second
#define pb push_back
#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster                                                                 \
    ios_base::sync_with_stdio(false);                                          \
    cin.tie(NULL);                                                             \
    cout.tie(NULL);

const int N = 1e5 + 5;
int n, a[N];

int main() {
    cout << "Input data:" << endl;

    cin >> n;
    FOR(i, 1, n) { cin >> a[i]; }

    sort(a + 1, a + n + 1);
    for (int i = 1; i <= n; i++) {
        cout << a[i] << " ";
    }

    EL;

    return 0;
}
