#include <iostream>
#include <cmath>

using namespace std;
const int N = 50010;
int n, a[N] = {0}, f[N][18] = {0};

void Input() {
    ios_base::sync_with_stdio(false); 
    int m;
    cin >> n >> m;
    for (int i=0; i<m; ++i) {
        int x, y, z;
        cin >> x >> y >> z;
        a[x] += z;
        a[y+1] -= z;
    }
    for (int i=1; i<=n; ++i)
        a[i] += a[i-1];
}

int RMQ(int x, int y) {
    int k = log2(y - x + 1);
    return max(f[x][k], f[y-(1<<k)+1][k]);
}

void Process() {
    for (int i=1; i<=n; ++i) 
        f[i][0] = a[i];
    for (int k=1; (1<<k)<=n; ++k)
        for (int i=1; i+(1<<k)-1<=n; ++i)
                f[i][k] = max(f[i][k-1], f[i+(1<<(k-1))][k-1]);
    int q;
    cin >> q; 
    for (int i=0; i<q; ++i) {
        int x, y;
        cin >> x >> y;
        cout << RMQ(x, y);
    }
}

int main() {
    Input(); 
    Process();
    return 0;
}
