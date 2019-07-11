#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cmath>
#include <map>
#include <vector>
#include <cassert>

using namespace std;

#define fs first
#define sc second
#define sz(a) (int)a.size()
#define pb push_back

typedef long long ll;
typedef pair<ll, ll> ii;

const ll N = 100005;
const ll oo = 1e9 + 100;

struct Point {
    ll x, y;

    Point(ll _x = 0, ll _y = 0): x(_x), y(_y) {}

    bool operator != (Point a) { return x != a.x || y != a.y; }
    bool operator == (Point a) { return x == a.x && y == a.y; }

    ll operator * (Point a) { return (ll)x*(ll)a.x + (ll)y*(ll)a.y; }
    ll operator % (Point a) { return (ll)x*(ll)a.y - (ll)y*(ll)a.x; }

    Point operator + (Point a) { return Point(x + a.x, y + a.y); }
    Point operator - (Point a) { return Point(x - a.x, y - a.y); }
    Point operator * (ll k) { return Point(x * k, y * k); }
    Point operator / (ll k) { return Point(x / k, y / k); }
};

struct gt {
    ll len, height;
};

gt top[N], bot[N];
vector <Point> A, B;
map <ii, bool> F;
ll S, E, L, n, m;
ll res = 0;

ll area(Point a, Point b, Point c) {
    b = b-a; c = c-a;
    return b % c;
}

ll getPolygonArea(vector <Point> & a) {
    ll res = 0;
    int n = a.size();
    if (n <= 2) return 0;
    for (int i = 1; i < n; ++i) {
        int j = (i+1)%n;
        res += area(a[0], a[i], a[j]);
    }
    return abs(res)/2;
}

bool isBetween(Point a, Point b, Point c) {
    return a.y >= min(b.y, c.y) && a.y <= max(b.y, c.y);
}

ii toII(Point a) {
    return ii(a.x, a.y);
}

void updateCur(Point & cur, Point nextCur) {
    if (nextCur != cur) {
        if (F[toII(nextCur)]) {
            B.clear();
            while (A[sz(A)-1] != nextCur) {
                B.push_back(A[sz(A)-1]);
                F.erase(toII(A[sz(A)-1]));
                A.pop_back();
            }
            B.push_back(A[sz(A)-1]);
            res += getPolygonArea(B);
        } else {
            A.pb(nextCur);
            F[toII(nextCur)] = true;
        }
        cur = nextCur;
        assert(sz(F) == sz(A));
    }
}


void solve() {
    res = 0;
    F.clear();

    Point cur = Point(0, S);
    Point tl = Point(0, top[1].height), tr = Point(top[1].len, top[1].height);
    Point bl = Point(0, bot[1].height), br = Point(bot[1].len, bot[1].height);
    int it = 1, ib = 1;

    A.clear();
    A.pb(cur);
    F[toII(cur)] = true;
    while (it < n && ib < m) {
        Point nextT = Point(tr.x, top[it+1].height);
        Point nextB = Point(br.x, bot[ib+1].height);

        if (isBetween(cur, tr, nextT)) {
            Point nextCur = Point(tr.x, cur.y);
            updateCur(cur, nextCur);
            if (tr.y > nextT.y) updateCur(cur, nextT);
        }
        else if (isBetween(cur, br, nextB)) {
            Point nextCur = Point(br.x, cur.y);
            updateCur(cur, nextCur);
            if (br.y < nextB.y) updateCur(cur, nextB);
        }

        if (tr.x >= br.x) {
            ++ib;
            bl = Point(br.x, bot[ib].height);
            br = bl + Point(bot[ib].len, 0);
        } else {
            ++it;
            tl = Point(tr.x, top[it].height);
            tr = tl + Point(top[it].len, 0);
        }
    }
    --n; --m;
    top[0].len = 0; top[0].height = S;
    bot[0].len = 0; bot[0].height = S;

    tl = Point(L, top[n].height);
    tr = tl - Point(top[n].len, 0);
    bl = Point(L, bot[m].height);
    br = bl - Point(bot[m].len, 0);
    it = n, ib = m;

    while (it > 0 && ib > 0) {
        Point nextT = Point(tr.x, top[it-1].height);
        Point nextB = Point(br.x, bot[ib-1].height);

        if (isBetween(cur, tr, nextT)) {
            Point nextCur = Point(tr.x, cur.y);
            updateCur(cur, nextCur);
            if (tr.y > nextT.y) updateCur(cur, nextT);
        }
        else if (isBetween(cur, br, nextB)) {
            Point nextCur = Point(br.x, cur.y);
            updateCur(cur, nextCur);
            if (br.y < nextB.y) updateCur(cur, nextB);
        }

        if (tr.x <= br.x) {
            --ib;
            bl = Point(br.x, bot[ib].height);
            br = bl - Point(bot[ib].len, 0);
        } else {
            --it;
            tl = Point(tr.x, top[it].height);
            tr = tl - Point(top[it].len, 0);
        }
    }
    cout << res << endl;
}

int main() {
	//freopen("input.txt", "r", stdin);
    int numTest; scanf("%d",&numTest);
    for (int it = 1; it <= numTest; ++it) {
        cin >> L >> S >> E;
        cin >> n;
        for (int i = 1; i <= n; ++i) {
            cin >> top[i].len >> top[i].height;
        }
        top[++n].len = 0;
        top[n].height = E;
        cin >> m;
        for (int i = 1; i <= m; ++i) {
            cin >> bot[i].len >> bot[i].height;
        }
        bot[++m].len = 0;
        bot[m].height = E;
        if (it == 1) setbuf(stdout, NULL);
        cout << "Case #" << it << "\n";
        solve();
    }

	return 0;
}
