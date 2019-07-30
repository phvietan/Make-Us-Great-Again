/**
 * https://codelearn.io/Training/Detail?Id=3845
 *
 * Difficulty   : medium
 * Problem tags : dp, matrix
 */

#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> ii;
typedef unsigned long long ull;

#define X first
#define Y second
#define pb push_back
#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster                                                                 \
    ios_base::sync_with_stdio(false);                                          \
    cin.tie(NULL);                                                             \
    cout.tie(NULL);

struct matrix {
    int n, m;
    int c[5][5];
    void reset() { FOR(i, 0, n - 1) FOR(j, 0, m - 1) c[i][j] = 0; }
    void print() {
        FOR(i, 0, n - 1) {
            FOR(j, 0, m - 1) cout << c[i][j] << " ";
            EL;
        }
    }
};

matrix operator*(const matrix &a, const matrix &b) {
    assert(a.m == b.n);
    matrix res{a.n, b.m};
    res.reset();
    FOR(i, 0, a.n - 1) FOR(j, 0, b.m - 1) FOR(k, 0, a.m - 1) {
        res.c[i][j] += a.c[i][k] * b.c[k][j];
        res.c[i][j] %= 10;
    }
    return res;
}

matrix power(matrix x, int n) {
    if (n == 1)
        return x;
    matrix t = power(x, n / 2);
    if (n % 2)
        return t * t * x;
    return t * t;
}

int sequenceElement(std::vector<int> a, int n) {
    if (n <= 4)
        return a[n];

    matrix f{5, 1};
    FOR(i, 0, 4) f.c[i][0] = a[4 - i];

    int c[5][5]{{1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0}};

    matrix x{5, 5};
    FOR(i, 0, 4) FOR(j, 0, 4) x.c[i][j] = c[i][j];

    matrix res = power(x, n - 4) * f;

    // f.print();
    // x.print();
    // res.print();

    return res.c[0][0];
}

int main() {

    FOR(i, 0, 15) {
        cout << i << " " << sequenceElement(vector<int>({1, 2, 3, 4, 5}), i)
             << endl;
    }

    return 0;
}