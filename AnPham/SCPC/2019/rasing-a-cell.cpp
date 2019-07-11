#include <algorithm>
#include <iostream>
#include <cstdio>
#include <cmath>

using namespace std;

typedef long long ll;

struct Point {
    double x, y;

    Point(double _x = 0.0, double _y = 0.0): x(_x), y(_y) {}
};

const double EPS = 1e-9;

double L, R;
int n;
Point a[100005], b[100005];

int sosanh(double a, double b) {
    if (fabs(a - b) < EPS) return 0;
    if (a-b < EPS) return -1;
    return 1;
}

bool operator < (Point a, Point b) {
    int k = sosanh(a.y, b.y);
    if (k != 0) return k < 0;
    return sosanh(a.x, b.x) < 0;
}

bool cmp(Point a, Point b) {
    return sosanh(a.x, b.x) < 0;
}

bool isValid(double L, double R) {
    return sosanh(L, R) <= 0;
}

bool checkCollision(double L1, double R1, double L2, double R2) {
    if (!isValid(L1, R1) || !isValid(L2, R2)) return false;
    double left = max(L1, L2);
    double right = min(R1, R2);
    return isValid(left, right);
}

bool check(double M) {
    int m = 0;
    for (int i = 1; i <= n; ++i) {
        if (sosanh(a[i].y, M) >= 0) break;
        b[++m] = a[i];
    }
    if (m==0) return true;
    sort(b+1, b+m+1, cmp);
    for (int i = 1; i < m; ++i)
        if (checkCollision(b[i].x+M, b[i+1].x-M, L, R)) return true;

    if (checkCollision(L, b[1].x-M, L, R)) return true;
    if (checkCollision(b[m].x+M, R, L, R)) return true;

    return false;
}

ll getAnswer() {
    double res = 0;
    double left = 0, right = 1e13;
    for (int i = 0; i < 128; ++i) {
        double M = (left + right) * 0.5;
        if (check(M)) {
            res = M;
            left = M;
        } else right = M;
    }
    res = res*2;
    return (ll)(res + EPS);
}

int main() {
    //freopen("input.txt", "r", stdin);
    int T;
    cin >> T;
    for (int test = 1; test <= T; ++test) {
        cin >> L >> R;
        cin >> n;
        for (int i = 1; i <= n; ++i) {
            ll x, y;
            cin >> x >> y;
            if (y < 0) y = y * -1;
            a[i] = Point(x, y);
        }
        sort(a+1, a+n+1);
        cout << "Case #" << test << endl;
		cout << getAnswer() << endl;
    }
    return 0;
}
