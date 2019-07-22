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

int main() {

    int n = (1 << 12) - (1 << 8) - (1 << 5) - (1 << 4);
    const int len = 15;
    bitset<len> f = bitset<len>(n);

    cout << f.size() << endl;
    cout << f.to_string() << endl;

    /**
     * Output
     * =================
     * 15
     * 000111011010000
     */

    return 0;
}