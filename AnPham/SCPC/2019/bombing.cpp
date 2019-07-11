#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cmath>
#include <string>
#include <cstring>
#include <map>
#include <set>
#include <vector>

using namespace std;

#define fs first
#define sc second
#define pb push_back
#define sz(a) (int)a.size()

const int mov[9][2] = {{0, 0}, {-1, 0}, {-2, 0}, {0, -1}, {-1, -1}, {-2, -1}, {0, -2}, {-1, -2}, {-2, -2}};

typedef pair<int,int> ii;

struct gt {
    int x, y, val;

    gt(int _x = 0, int _y = 0, int _val = 0): x(_x), y(_y), val(_val) {}
};

bool operator < (gt a, gt b) {
    if (a.val != b.val) return a.val > b.val;
    if (a.x != b.x) return a.x < b.x;
    return a.y < b.y;
}

set <gt> s;
vector <ii> result;
char a[55][505];
int dem[55][505];
int n, m;

bool isInside(int x, int y) {
    return x >= 1 && x <= n && y >= 1 && y <= m;
}

void init() {
    memset(dem, 0, sizeof dem);
    s.clear();

    for (int i = 1; i <= n; ++i)
    for (int j = 1; j <= m; ++j)
    if (a[i][j] == '1') {
        for (int k = 0; k < 9; ++k) {
            int i2 = i+mov[k][0], j2 = j+mov[k][1];
            if (isInside(i2, j2)) dem[i2][j2]++;
        }
    }
    for (int i = 1; i <= n; ++i)
    for (int j = 1; j <= m; ++j)
        if (dem[i][j] > 0) s.insert(gt(i, j, dem[i][j]));
}

void del(int x, int y) {
    if (a[x][y] == '0') return;
    a[x][y] = '0';
    for (int k = 0; k < 9; ++k) {
        int x2 = x + mov[k][0], y2 = y + mov[k][1];
        if (!isInside(x2, y2)) continue;
        gt u = gt(x2, y2, dem[x2][y2]);
        s.erase(u);
        dem[x2][y2]--;
        u.val = dem[x2][y2];
        if (u.val != 0) s.insert(u);
    }
}

void solve() {
    result.clear();
    while (!s.empty()) {
        gt u = *s.begin();
        result.push_back(ii(u.x, u.y));
        //
        for (int k = 0; k < 9; ++k) {
            int x = u.x - mov[k][0], y = u.y - mov[k][1];
            if (!isInside(x, y)) continue;
            if (a[x][y] == '1') del(x, y);
        }
    }
    printf("%d\n", result.size());
    for (int i = 0; i < sz(result); ++i)
        printf("%d %d\n", result[i].fs, result[i].sc);
}

int main() {
	//freopen("input.txt", "r", stdin);
    int numTest; scanf("%d\n",&numTest);
    for (int it = 1; it <= numTest; ++it) {
        printf("Case #%d\n", it);
        scanf("%d %d\n", &n, &m);
        for (int i = 1; i <= n; ++i)
            scanf("%s\n",a[i]+1);
        init();
        solve();
        fflush(stdout);
    }
	return 0;
}
