#include <iostream>
#include <cstdio>
#include <algorithm>
#include <map>
#include <cstring>

using namespace std;

const int N = 1005;
const int MAXRANGE = 1000000000;

typedef long long ll;
typedef pair<int, int> ii;

struct rectangle {
    int x1, y1, x2, y2;

    rectangle(int _x1 = 0, int _y1 = 0, int _x2 = 0, int _y2 = 0): x1(_x1), y1(_y1), x2(_x2), y2(_y2) {}

    bool wholeInside(rectangle b) {
        return x1 >= b.x1 && x2 <= b.x2 && y1 >= b.y1 && y2 <= b.y2;
    }

    rectangle intersect(rectangle b) {
        int x1 = max(b.x1, this->x1);
        int x2 = min(b.x2, this->x2);
        int y1 = max(b.y1, this->y1);
        int y2 = min(b.y2, this->y2);
        return rectangle(x1, y1, x2, y2);
    }

    rectangle translate(int dx, int dy) {
        return rectangle(x1 + dx, y1 + dy, x2 + dx, y2 + dy);
    }

    bool isValid() {
        return x1 <= x2 && y1 <= y2;
    }
};

int n, m, q, maxN, maxM;
ll cnt0, cnt1;
char a[N*2][N*2];
map <ii, ll> rem;
rectangle initialBox;
ll F[N*2][N*2];

void sum(void * c, int n, int m) {
    int (*b)[n][m] = (int (*)[n][m]) c;
    int sum = 0;
    for (int i = 0; i < n; ++i)
    for (int j = 0; j < m; ++j) {
        sum += (*b)[i][j];
    }
    cout << sum << endl;
}

void cpy(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, int xorr) {
    for (int i = x1; i <= x2; ++i)
    for (int j = y1; j <= y2; ++j) {
        int X = i-x1+x3;
        int Y = j-y1+y3;
        int cur = (a[i][j] - '0') ^ xorr;
        a[X][Y] = cur + '0';
    }
}

void cnt() {
    for (int i = 1; i <= n; ++i)
    for (int j = 1; j <= m; ++j) {
        cnt0 += (a[i][j] == '0');
        cnt1 += (a[i][j] == '1');
    }
    rem[ii(n, m)] = cnt1;
}

void expand() {
    while (n < N && m < N) {
        cpy(1, 1, n, m, n+1,m+1,2*n,2*m, 0);
        cpy(1, 1, n, m, 1,m+1,n,2*m, 1);
        cpy(1, 1, n, m, n+1,1,2*n,m, 1);
        n *= 2;
        m *= 2;
        cnt1 = cnt0 = cnt1 * 2 + cnt0 * 2;
        rem[ii(n, m)] = cnt1;
    }
    initialBox = rectangle(1, 1, n, m);
    maxN = n, maxM = m;
    while (maxN < MAXRANGE && maxM < MAXRANGE) {
        maxN *= 2;
        maxM *= 2;
        cnt1 = cnt0 = cnt1 * 2 + cnt0 * 2;
        rem[ii(maxN, maxM)] = cnt1;
    }
}

void dp() {
    memset(F, 0, sizeof F);
    for (int i = 1; i <= n; ++i)
    for (int j = 1; j <= m; ++j) {
        int cur = a[i][j] - '0';
        F[i][j] = F[i-1][j] + F[i][j-1] - F[i-1][j-1] + cur;
    }
}

ll getSmallQuery(rectangle cur, int xorr) {
    ll num1 = F[cur.x2][cur.y2] - F[cur.x1-1][cur.y2] - F[cur.x2][cur.y1-1] + F[cur.x1-1][cur.y1-1];
    ll n = cur.x2 - cur.x1 + 1;
    ll m = cur.y2 - cur.y1 + 1;
    ll num0 = n*m - num1;
    return (xorr == 0) ? num1 : num0;
}

ll query(rectangle cur, rectangle vir, int xorr) {
    if (!cur.isValid()) return 0;
    ll curN = vir.x2 - vir.x1 + 1, curM = vir.y2 - vir.y1 + 1;
    if (vir.wholeInside(cur)) {
        ll num1 = rem[ii(curN, curM)];
        ll num0 = curN*curM - num1;
        return (xorr == 0) ? num1 : num0;
    }
    if (cur.wholeInside(initialBox)) return getSmallQuery(cur, xorr);

    rectangle tl = rectangle(vir.x1, vir.y1, vir.x2/2, vir.y2/2);
    rectangle tr = rectangle(vir.x1, vir.y2/2 + 1, vir.x2/2, vir.y2);
    rectangle bl = rectangle(vir.x2/2 + 1, vir.y1, vir.x2, vir.y2/2);
    rectangle br = rectangle(vir.x2/2 + 1, vir.y2/2 + 1, vir.x2, vir.y2);

    rectangle topLeft = cur.intersect(tl);
    rectangle topRight = cur.intersect(tr).translate(0, -vir.y2/2);
    rectangle bottomLeft = cur.intersect(bl).translate(-vir.x2/2, 0);
    rectangle bottomRight = cur.intersect(br).translate(-vir.x2/2, -vir.y2/2);

    vir = rectangle(vir.x1, vir.y1, vir.x2 / 2, vir.y2 / 2);

    ll res = query(topLeft, vir, xorr) +
        query(topRight, vir, xorr ^ 1) +
        query(bottomLeft, vir, xorr ^ 1) +
        query(bottomRight, vir, xorr);

    return res;
}

int main() {
    freopen("input.txt", "r", stdin);
    scanf("%d%d%d\n",&n,&m,&q);
    for (int i = 1; i <= n; ++i) scanf("%s\n", a[i]+1);
    cnt();
    expand();
    dp();
    while (q--) {
        int x1, y1, x2, y2;
        scanf("%d%d%d%d",&x1,&y1,&x2,&y2);
        rectangle cur = rectangle(x1, y1, x2, y2);
        rectangle vir = rectangle(1, 1, maxN, maxM);
        printf("%I64d\n", query(cur, vir, 0));
    }
    return 0;
}

