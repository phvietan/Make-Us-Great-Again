#include <bits/stdc++.h>

using namespace std;

const int M = 1000000 + 5;
const int MOD = 1000000000 + 7;
long long n;
int maxX;

long long pow2[25];
int dp[M][20][2];

long long countS(int x, int y)
{
    return n / pow2[x] / (y?3l:1l);
}

int main()
{
    // freopen("input.txt", "r", stdin);

    pow2[0] = 1;
    for(int i = 1; i < 25; i++){
        pow2[i] = pow2[i-1] * 2 % MOD;
    }

    cin>>n;
    maxX = 0;
    while(n >= pow2[maxX])
    {
        maxX++;
    }
    maxX--;

    dp[1][maxX][0] = 1;
    if(n >= pow2[maxX - 1] * 3)
    {
        dp[1][maxX-1][1] = 1;
    }

    for(int i = 1; i<n; i++)
    {
        // memset(dp[(i+1)%2], 0, sizeof(dp[(i+1)%2]));
        for(int j = 0; j<20; j++)
        {
            for(int k = 0; k < 2; k++)
            {
                if(countS(j,k)>i){
                    dp[(i+1)][j][k] += 1ll*dp[i][j][k] * ((countS(j,k) - i) % MOD) % MOD;
                    dp[(i+1)][j][k] %= MOD;
                }
                if(j>0){
                    dp[(i+1)][j-1][k] += 1ll*dp[i][j][k] * ((countS(j-1, k) - countS(j, k)) % MOD) % MOD;
                    dp[(i+1)][j-1][k] %= MOD;
                }
                if(k>0){
                    dp[(i+1)][j][k-1] += 1ll*dp[i][j][k] * ((countS(j, k-1) - countS(j, k)) % MOD) % MOD;
                    dp[(i+1)][j][k-1] %= MOD;
                }
            }
        }
    }

    cout<<dp[n][0][0]<<endl;
    
    return 0;
}
