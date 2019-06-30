#include <cstdio>
#include <algorithm>
#include <iostream>
#include <vector>
#include <cstring>

using namespace std;

typedef long long ll;
typedef unsigned long long ull;

ll arrL[4782970], arrR[4782970];

class EllysHash {
private:
    int n, n1, n2;
    ll mu[30];
    string a, b, c;

    const ll MOD = 1000000000000037LL;

    void init(int N, string A, string B, string C) {
        this->n = N;
        this->a = A;
        this->b = B;
        this->c = C;
        //
        this->mu[0] = 1;
        for (int i = 1; i <= 28; ++i)
            this->mu[i] = this->mu[i-1] * 127 % MOD;
    }

    ll attach(ll val, char c) {
        return (val * 127 + c) % MOD;
    }

    void dq(ll valHash, int ind, int mx, ll * arr, int & n) {
        if (ind >= mx) {
            arr[n++] = valHash;
            return;
        }
        dq(this->attach(valHash, this->a[ind]), ind+1, mx, arr, n);
        dq(this->attach(valHash, this->b[ind]), ind+1, mx, arr, n);
        dq(this->attach(valHash, this->c[ind]), ind+1, mx, arr, n);
    }

    ll getNP(ll val, ll * arr, int n) {
        int L = 0, R = n - 1;
        ll res = -2;
        while (L <= R) {
            int M = (L+R)>>1;
            if (MOD - arr[M] <= val) {
                res = arr[M];
                R = M-1;
            } else L = M+1;
        }
        return res;
    }

    ll mul(ull a, ull b) {
        if (b <= 10000) return a * b % MOD;
        ull k = this->mul(a, b / 10000);
        b %= 10000;
        ull k2 = a * b % MOD;
        return (k*10000 % MOD + k2) % MOD;
    }

public:
    ll getHash(int N, string A, string B, string C) {
        this->init(N, A, B, C);
        int leftHalf = n/2;
        int rightHalf = (n+1)/2;
        dq(0, 0, leftHalf, arrL, this->n1);
        dq(0, leftHalf, n, arrR, this->n2);
        sort(arrR, arrR+this->n2);

        ll result = MOD;
        for (int i = 0; i < this->n1; ++i) {
            ll val = this->mul(arrL[i], this->mu[rightHalf]);
            ll npVal = this->getNP(val, arrR, this->n2);
            ll firstVal = arrR[0];
            ll lastVal = arrR[this->n2-1];
            if (npVal != -2) result = min(result, (val + npVal) % MOD);
            result = min(result, (val + firstVal) % MOD);
            result = min(result, (val + lastVal) % MOD);
        }
        return result;
    }
} program;

//int main() {
//    freopen("input.txt", "r", stdin);
//    string a, b, c;
//    cin >> a >> b >> c;
//    cout << program.getHash(a.length(), a, b, c) << endl;
//}
