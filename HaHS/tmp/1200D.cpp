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

const int N = 5005;
int n, k, a[N][N], f[N][N], t[N][N];

int area(int i1, int j1, int i2, int j2) {
    return f[i2][j2] - f[i2][j1 - 1] - f[i1 - 1][j2] + f[i1 - 1][j1 - 1];
}

int wr(int i) {
    return area(i, 1, i, n);
}

int wc(int j) {
    return area(1, j, n, j);
}

int wr2(int r, int i, int j) {
    if (r < i || r > i + k - 1)
        return wr(r);
    return area(r, 1, r, j - 1) + area(r, j + k, r, n) + k;
}

int wc2(int c, int i, int j) {
    if (c < j || c > j + k - 1)
        return wc(c);
    return area(1, c, i - 1, c) + area(i + k, c, n, c) + k;
}

int main() {

    cin >> n >> k;
    FOR(i, 1, n) {
        string s;
        cin >> s;
        FOR(j, 1, n) {
            a[i][j] = s[j - 1] == 'W';
            f[i][j] = f[i - 1][j] + f[i][j - 1] - f[i - 1][j - 1] + a[i][j];
        }
    }

    int cr = 0, cc = 0, res = 0;
    FOR(i, 1, n) {
        cr += wr(i) == n;
        cc += wc(i) == n;
    }
    res = cr + cc;

    FOR(i, 1, k - 1) {}
    FOR(i, k, n)

    FOR(i, 1, n - k + 1) {
        int dr = cr;
        int dc = cc;
        FOR(j, 1, k) {
            if (wc(j) < n && wc2(j, i, 1) == n) {
                dc++;
            }
        }
        t[1][i + k - 1] = wr2(i + k - 1, i, 1);
        res = max(res, dc + dr);
        FOR(j, 2, n - k + 1) {
            if (wc(j - 1) < n)
                dc--;
            if (wc(j + k - 1) < n && wc2(j + k - 1, i, j) == n) {
                dc++;
            }
            if (a[i + k - 1][j - 1] == 'B')
                t[j][i + k - 1] = 1;
            res = max(res, dc + dr);
        }
    }

    cout << res << endl;

    return 0;
}
