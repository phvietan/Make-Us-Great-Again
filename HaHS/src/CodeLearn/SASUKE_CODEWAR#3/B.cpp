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

int numberOfWays(int n, int a, int b, int c) {
    a /= 2;
    int res = 0;
    FOR(i, 0, a) FOR(j, 0, c) {
        int k = n - (i + j * 2);
        if (k >= 0 && k <= b)
            res++;
    }
    return res;
}

#ifdef debug
int main() {

    EL;
    return 0;
}
#endif