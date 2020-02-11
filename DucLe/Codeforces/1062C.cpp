#include <algorithm>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <cstring>
#include <string>
#include <vector>
#include <cstdio>
#include <stack>    
#include <queue>
#include <deque>
#include <ctime>
#include <cmath>

#define fi first
#define se second
#define mp make_pair
#define pb push_back
#define debug(x) cout << x << ' ';
#define debun(x) cout << x << '\n';

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

typedef pair<int,int> ii;
typedef long long ll;

const int mod = 1e9 + 7;
int n, q, c[100002];
long long p[100002];
string s;

int main() {
    cin >> n >> q;
    cin >> s;
    c[0] = 0;
    p[0] = 1;
    for (int i=1; i<=n; ++i) {
        p[i] = p[i - 1] * 2 % mod;
        c[i] = c[i-1] + s[i-1] - '0';
    }
    for (; q; --q) {
        int l, r;
        cin >> l >> r;
        int k = c[r] - c[l-1];
        long long ans = (p[k] - 1 + mod) % mod;
        ans = ans * p[r-l+1-k] % mod;
        cout << ans << '\n';
    }
    return 0;
}
