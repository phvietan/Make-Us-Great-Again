#include <iostream>

using namespace std;
const int N = 10001;
int n, k, a[N], T[N][11] = {0};

void Input() {
    ios_base::sync_with_stdio(false); 
    cin >> n >> k;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
}

void Increase(int &u, int v) {
    u = (u + v) % (int) 1e9;
}

void Update(int l, int k, int value) {
    while (k <= 10000) {
        Increase(T[l][k], value);
        k += k & -k;
    }
}

int Count(int l, int k) {
    int result = 0;
    while (k) {
        Increase(result, T[l][k]);
        k -= k & -k;
    }
    return result;
}

void Solve() {
    int result = 0;
    for (int i=1; i<=n; ++i) {
        Update(1, 10000 - a[i] + 1, 1);
        for (int l=2; l<=k; ++l) {
            int counting = Count(l - 1, 10000 - a[i]);
            Update(l, 10000 - a[i] + 1, counting);
            if (l == k)
                Increase(result, counting);
        }
    }
    cout << result << endl;
}

int main() {
    Input();
    Solve();
    return 0;
}

