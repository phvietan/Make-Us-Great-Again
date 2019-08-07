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

int n, p;
int a[100];

int main() {
    cin >> n >> p;
    FOR(i, 1, n) { cin >> a[i]; }

    sort(a + 1, a + n + 1);

    auto it = lower_bound(a + 1, a + n + 1, p);
    int idx = it - a;

    cout << idx << endl;

    return 0;
}
