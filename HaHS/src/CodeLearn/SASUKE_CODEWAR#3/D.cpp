#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef vector<int> vi;
typedef pair<int, int> ii;

#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster ios_base::sync_with_stdio(false) && cin.tie(NULL)

// #define debug 1

bool sortedArray(std::vector<int> a) {
    int n = sz(a);
    vi b(a);
    sort(b.begin(), b.end());
    int c = 0;
    FOR(i, 0, n - 1) {
        c += a[i] != b[i];
    }
    return c <= 2;
}

#ifdef debug
int main() {

    EL;
    return 0;
}
#endif