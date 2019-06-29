#include <iostream>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

const int N = 300010;
int n, x, a[N];
long long f[N][3][3];

int main() {
    ios_base::sync_with_stdio(false);
    cin >> n >> x;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
    for (int i=0; i<=n; ++i)
        for (int j=0; j<3; ++j)
            for (int k=0; k<3; ++k)
                f[i][j][k] = -1e18;
    f[0][0][0] = 0;
    for (int i=0; i<=n; ++i)
        for (int j=0; j<3; ++j)
            for (int k=0; k<3; ++k) { 
                if (i + j + k == 0) continue;
                if (k > 0) maximize(f[i][j][k], f[i][j][k-1]);
                if (j > 0) maximize(f[i][j][k], f[i][j-1][k]); 
                if (i > 0) maximize(f[i][j][k], f[i-1][j][k] + 1ll * (j == 1 ? a[i] : 0) * (k == 1 ? x : 1));
            }
    cout << f[n][2][2] << endl;
    return 0;
}
