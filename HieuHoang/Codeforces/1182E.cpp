#include <bits/stdc++.h>

using namespace std;

#define ll long long

ll n, f[4], c;
ll mtr[4][4];

ll g[4];

ll exponent;

const ll MOD = 1000000000+7;

void mul(ll a[][4], ll b[][4]){
    ll tmp[4][4];
    for(int i = 1; i<4; i++){
        for(int j = 1; j<4; j++){
            tmp[i][j] = 0;
            for(int k = 1; k<4; k++){
                tmp[i][j] += a[i][k] * b[k][j] % (MOD-1);
            }
            tmp[i][j]%=MOD-1;
        }
    }

    for(int i = 1; i<4; i++){
        for(int j = 1; j<4; j++){
            a[i][j] = tmp[i][j];
        }
    }
}


void powMtr(){
    ll tmpMtr[4][4];
    for(int i = 0; i<4; i++){
        for(int j = 0; j<4; j++){
            tmpMtr[i][j] = mtr[i][j];
        }
    }

    for(int i = 1; i<4; i++){
        for(int j = 1; j<4; j++){
            mtr[i][j]=i==j?1:0;
        }
    }

    while(exponent){
        if(exponent%2){
            mul(mtr, tmpMtr);
        }

        mul(tmpMtr, tmpMtr);
        exponent>>=1;
    }
}

long long binPow(long long a, long long m){
    long long ans = 1;

    while(m){
        if(m%2){
            ans *= a;
            ans %= MOD;
        }

        a = a*a%MOD;
        m>>=1;
    }

    return ans;
}

long long inverseModulo(long long a){
    return binPow(a, MOD-2);
}

int main()
{
    cin>>n>>f[1]>>f[2]>>f[3]>>c;
    mtr[1][1] = mtr[1][2] = 1;
    mtr[1][0] = 0;

    mtr[2][1] = mtr[2][3] = 1;
    mtr[2][2] = 0;

    mtr[3][1] = 1;
    mtr[3][2] = mtr[3][3] = 0;

    exponent = n-4;
    powMtr();

    f[1] = f[1] * c % MOD;
    f[2] = f[2] * c % MOD * c % MOD;
    f[3] = f[3] * c % MOD * c % MOD * c % MOD;

    ll expo1 = mtr[1][1] + mtr[1][2] + mtr[1][3];
    expo1 %= MOD-1;

    ll expo2 = mtr[2][1] + mtr[2][2] + mtr[2][3];
    expo2 %= MOD-1;

    ll expo3 = mtr[3][1] + mtr[3][2] + mtr[3][3];
    expo3 %= MOD-1;

    ll ans = binPow(f[1], expo3) * binPow(f[2], expo2) % MOD * binPow(f[3], expo1) % MOD;
    ans = ans * inverseModulo(binPow(c, n)) % MOD;

    cout<<ans<<endl;

    return 0;
}
