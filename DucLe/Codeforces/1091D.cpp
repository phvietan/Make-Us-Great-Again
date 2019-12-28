#include <iostream>

using namespace std;
const int N = 1000001;
const int mod = 998244353;
int n, fact[N] = {1};

int _power(int a, int b) {
    int res = 1;
    for ( ; b; b >>= 1) {
        if (b & 1) 
            res = 1ll * res * a % mod;
        a = 1ll * a * a % mod; 
    }
    return res;
}

int main() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        fact[i] = 1ll * fact[i-1] * i % mod;
    int result = 1ll * n * fact[n] % mod;
    for (int k=1; k<=n-1; ++k) {
        result = (result - 1ll*fact[n] * _power(fact[k], mod - 2) % mod + 1ll * mod * mod) % mod;
    }
    cout << result;
    return 0;
}
