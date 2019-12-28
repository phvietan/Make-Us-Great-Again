#include <iostream>

using namespace std;
const int N = 502;
int n, m, b, mod, a[N];
int f[2][N][N] = {0};

void add(int &a, int b) {
    a = (a + b);
    while (a >= mod)
        a -= mod;
}

int main() {
    ios_base::sync_with_stdio(false);
    cin >> n >> m >> b >> mod;

    for (int i=1; i<=n; ++i) 
        cin >> a[i];

    f[0][0][0] = 1;

    for (int p=1; p<=n; ++p)
        for (int l=0; l<=m; ++l)
            for (int bugs=0; bugs<=b; ++bugs) {
                f[p%2][l][bugs] = f[1-p%2][l][bugs];
                if (l-1 >= 0 && bugs-a[p] >= 0)
                    add(f[p%2][l][bugs], f[p%2][l-1][bugs-a[p]]);
            }
    int result = 0;
    for (int bugs=0; bugs<=b; ++bugs)
        add(result, f[n%2][m][bugs]);
    cout << result << endl;
}
