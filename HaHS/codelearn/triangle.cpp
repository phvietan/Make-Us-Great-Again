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

const double eps = 1e-6;

#define sqr(x) ((x) * (x))
#define d(a, b) sqrt(sqr(a.first - b.first) + sqr(a.second - b.second))
#define ck(x, y, z) (abs(x + y - z) < eps)

int check(ii a, ii b, ii c) {
    if (a == b || b == c || a == c)
        return false;
    double x = d(a, b);
    double y = d(b, c);
    double z = d(c, a);
    if (ck(x, y, z) || ck(y, z, x) || ck(z, x, y))
        return false;
    return true;
}

int countTriangles(vector<int> xpoints, vector<int> ypoints) {
    int n = xpoints.size();
    int res = 0;
    vector<ii> points;
    for (int i = 0; i < n; i++) points.push_back({xpoints[i], ypoints[i]});
    for (ii a : points)
        for (ii b : points)
            for (ii c : points) res += check(a, b, c);
    return res / 6;
}

int main() {

    int n;
    cin >> n;
    vi a, b;
    for (int i = 1; i <= n; i++) {
        int x, y;
        cin >> x >> y;
        a.push_back(x);
        b.push_back(y);
    }
    for (int x : a) cout << x << ",";
    EL;
    for (int x : b) cout << x << ",";
    EL;
    cout << countTriangles(a, b) << endl;

    EL;
    return 0;
}