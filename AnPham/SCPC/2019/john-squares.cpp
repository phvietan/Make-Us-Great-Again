#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cmath>
#include <string>
#include <cstring>
#include <map>

using namespace std;

typedef pair<int,int> ii;
typedef long long ll;

#define fs first
#define sc second

const int N = 500005;

int M, n;

struct Point {
    int x, y;

    Point(int _x = 0, int _y = 0): x(_x), y(_y) {}

    bool operator < (Point a) {
        if (x != a.x) return x < a.x;
        return y < a.y;
    }

    bool operator > (Point a) {
        if (x != a.x) return x > a.x;
        return y > a.y;
    }

    bool operator == (Point a) { return x == a.x && y == a.y; }
} a[N];


void solve() {
    ll res = 0;
    for (int i = 1; i <= n; ++i) {
        int minCur = min(M - a[i].x, M - a[i].y);
        for (int j = 1; j <= n; ++j) {
            if (a[i].x < a[j].x && a[i].y < a[j].y)
                minCur = min(minCur, max(a[j].x - a[i].x, a[j].y - a[i].y));
        }
        res += minCur;
    }
    cout << res << endl;
}


int main() {
	//freopen("input.txt", "r", stdin);
    int numTest; scanf("%d",&numTest);
    for (int it = 1; it <= numTest; ++it) {
        scanf("%d",&M);
        scanf("%d",&n);
        for (int i = 1; i <= n; ++i) {
            scanf("%d%d",&a[i].x,&a[i].y);
        }
        if (it == 1) setbuf(stdout, NULL);
        cout << "Case #" << it << "\n";
        solve();
    }
	return 0;
}
