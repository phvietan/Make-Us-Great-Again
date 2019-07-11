#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cmath>

using namespace std;

typedef long long ll;

const int N = 3000000;
const int oo = 1000000000;

int G[N+5];

ll getVal(ll n) {
    ll res = -1, L = 1, R = n;
    while (L <= R) {
        ll M = (L+R)>>1;
        if (M+1 <= (n*2)/M) {
            res = M;
            L = M+1;
        } else R = M-1;
    }
    return res;
}

int getF(ll x) {
    ll val = getVal(x);
    ll t1 = val*(val+1)/2;
    ll t2 = val*(val-1)/2;
    return min(val + G[x-t1], val-1 + G[x-t2]);
}

int getAnswer(ll L, ll R) {
    ll k = getVal(R);
    ll K = k*(k+1)/2;
    int mx = -1;

    for (ll i = max(K - 10000, L); i <= K; ++i)
        mx = max(mx, getF(i));
    for (ll i = max(R-10000, L); i <= R; ++i)
        mx = max(mx, getF(i));
    return mx;
}

int main() {
    // freopen("input.txt", "r", stdin);
    for (int i = 1; i <= N; ++i) G[i] = oo;
    G[0] = 0;
    for (int i = 1; i <= N; ++i) {
        int j = getVal(i);
        int cnt = 10;
        while (cnt-- && j >= 0) {
            G[i] = min(G[i], G[i - j*(j+1)/2] + j);
            j--;
        }
    }
    int T, test_case;
    cin >> T;
    for(test_case = 0; test_case  < T; test_case++)
	{
        ll N1, N2;
		cin >> N1 >> N2;
		cout << "Case #" << test_case+1 << endl;
		cout << getAnswer(N1, N2) << endl;
	}

    return 0;
}
