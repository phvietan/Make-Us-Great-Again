#include <cstdio>
#include <iostream>
#include <algorithm>
#include <map>

using namespace std;

typedef long long ll;

struct vt {
    ll val;
    int ind;

    vt(ll _val = 0, int _ind = 0): val(_val), ind(_ind) {}
};

const int N = 200005;

vt b[N], c[N];
int n;
map <ll, int> F;

bool operator < (vt a, vt b) {
    if (a.val != b.val) return a.val < b.val;
    return a.ind < b.ind;
}

bool xoa(int ind) {
    int m = 0;
    for (int i = 1; i <= n; ++i)
        if (i != ind) c[++m] = b[i];
    ll inc = c[2].val - c[1].val;
    for (int i = 3; i <= m; ++i)
        if (c[i].val != c[i-1].val + inc) return false;
    return true;
}

int getResult() {
    F[b[1].val]++;
    ll inc = b[2].val - b[1].val;
    for (int i = 2; i < n; ++i)
        F[b[1].val + inc * ((ll)i-1)]++;

    int cnt = 0, remember = -1;
    for (int i = 1; i <= n; ++i) {
        if (!F[b[i].val]) {
            cnt++;
            remember = i;
        }
        else F[b[i].val]--;
    }
    if (cnt != 1 || remember == -1) return -1;
    return b[remember].ind;
}

int main() {
   // freopen("input.txt", "r", stdin);
    scanf("%d",&n);
    for (int i = 1; i <= n; ++i) {
        int x;
        scanf("%d",&x);
        b[i] = vt(x, i);
    }
    sort(b+1, b+n+1);
    if (xoa(1)) cout << b[1].ind << endl;
    else if (xoa(2)) cout << b[2].ind << endl;
    else {
        cout << getResult() << endl;
    }
    return 0;
}
