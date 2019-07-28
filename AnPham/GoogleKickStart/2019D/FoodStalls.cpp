#include <cstring>
#include <set>
#include <algorithm>
#include <iostream>
#include <cstdio>

using namespace std;

typedef long long ll;
typedef pair<ll,ll> ii;

#define fs first
#define sc second

const int N = 100005;
const ll oo = 1e18;

set <ii> s;
int k, n, Lnum, Rnum;
ll Lf[N], Rf[N];
ii a[N];

void rs(ll * a, int n) {
    for (int i = 0; i <= n+3; ++i) a[i] = 0;
}

void initLeft() {
    s.clear();
    rs(Lf, n);
    if (Lnum == 0) return;
    ll sum = 0;
    for (int i = 1; i <= Lnum; ++i) {
        ll cur = (ll)a[i].sc - (ll)a[i].fs;
        s.insert(ii(cur, i));
        sum += cur;
    }
    Lf[Lnum] = sum;
    for (int i = Lnum+1; i <= n; ++i) {
        ll cur = (ll)a[i].sc - (ll)a[i].fs;
        ii mx = *s.rbegin();
        if (mx.fs > cur) {
            s.erase(mx);
            s.insert(ii(cur, i));
            sum = sum - mx.fs + cur;
        }
        Lf[i] = sum;
    }
}

void initRight() {
    s.clear();
    rs(Rf, n);
    if (Rnum == 0) return;
    ll sum = 0;
    for (int i = n; i >= n-Rnum+1; --i) {
        ll cur = (ll)a[i].sc + (ll)a[i].fs;
        s.insert(ii(cur, i));
        sum += cur;
    }
    Rf[n-Rnum+1] = sum;
    for (int i = n-Rnum; i >= 1; --i) {
        ll cur = (ll)a[i].sc + (ll)a[i].fs;
        ii mx = *s.rbegin();
        if (mx.fs > cur) {
            s.erase(mx);
            s.insert(ii(cur, i));
            sum = sum - mx.fs + cur;
        }
        Rf[i] = sum;
    }
}

void solve() {
    ll res = oo;
    for (int i = Lnum+1; i <= n-Rnum; ++i) {
        ll cur = Lf[i-1] + Rf[i+1] + (ll)a[i].sc;
        if (k & 1) {
            cur += (ll)a[i].fs;
        }
        res = min(res, cur);
    }
    cout << res << endl;
}

int main() {
    //freopen("input.txt", "r", stdin);
    int t;
    scanf("%d",&t);
    for (int test = 1; test <= t; ++test) {
        printf("Case #%d: ", test);
        scanf("%d%d",&k,&n);
        for (int i = 1; i <= n; ++i) {
            scanf("%d",&a[i].fs);
        }
        for (int i = 1; i <= n; ++i) {
            scanf("%d",&a[i].sc);
        }
        Lnum = (k+1)/2, Rnum = k/2;
        sort(a+1, a+n+1);
        initLeft();
        initRight();
        solve();
    }

    return 0;
}
