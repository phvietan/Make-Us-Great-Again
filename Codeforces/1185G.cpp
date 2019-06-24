#include <algorithm>
#include <cmath>
#include <cstring>
#include <cstdio>
#include <iostream>
#include <vector>

using namespace std;

typedef long long ll;

const int MOD = 1000000007;
const int N = 52;
const int MAXT = 2502;

int n, T, dur[N], gen[N];
vector <int> A[5];
int cach1[N][MAXT], cach23[N][N][MAXT];
int ways[N][N][N][4];
int mu[N];

void inc(int & x, int k) {
    x = (x+k)%MOD;
}

int main() {
    freopen("input.txt", "r", stdin);
    scanf("%d%d",&n, &T);
    for (int i = 1; i <= n; ++i) {
        scanf("%d%d",&dur[i],&gen[i]);
        A[gen[i]].push_back(dur[i]);
    }
    cach1[0][0] = 1;
    int max1SoFar = 0;
    for (int i = 0; i < A[1].size(); ++i) {
        for (int j = i; j >= 0; --j)
        for (int k = 0; k <= max1SoFar; ++k) {
            if (k+A[1][i] > T) continue;
            inc(cach1[j+1][k+A[1][i]], cach1[j][k]);
            max1SoFar = max(max1SoFar, k+A[1][i]);
        }
    }
    cach23[0][0][0] = 1;
    int maxSoFar = 0;
    int soFar2 = 0, soFar3 = 0;
    for (int i = 0; i < A[2].size() + A[3].size(); ++i) {
        if (i < A[2].size()) {
            int cur = A[2][i];
            for (int j = soFar2; j >= 0; --j)
            for (int k = soFar3; k >= 0; --k)
            for (int l = 0; l <= maxSoFar; ++l) {
                if (l+cur > T) continue;
                inc(cach23[j+1][k][l+cur], cach23[j][k][l]);
                maxSoFar = max(maxSoFar, l+cur);
            }
            soFar2++;
        } else {
            int cur = A[3][i-A[2].size()];
            for (int j = soFar2; j >= 0; --j)
            for (int k = soFar3; k >= 0; --k)
            for (int l = 0; l <= maxSoFar; ++l) {
                if (l+cur > T) continue;
                inc(cach23[j][k+1][l+cur], cach23[j][k][l]);
                maxSoFar = max(maxSoFar,l+cur);
            }
            soFar3++;
        }
    }
    ways[1][0][0][1] = ways[0][1][0][2] = ways[0][0][1][3] = 1;
    for (int i = 0; i <= A[1].size(); ++i)
    for (int j = 0; j <= A[2].size(); ++j)
    for (int k = 0; k <= A[3].size(); ++k) {
        inc(ways[i+1][j][k][1], (ways[i][j][k][2] + ways[i][j][k][3]) % MOD);
        inc(ways[i][j+1][k][2], (ways[i][j][k][1] + ways[i][j][k][3]) % MOD);
        inc(ways[i][j][k+1][3], (ways[i][j][k][1] + ways[i][j][k][2]) % MOD);
    }
    mu[0] = 1;
    for (int i = 1; i <= n; ++i) mu[i] = (ll)mu[i-1]*i % MOD;

    int result = 0;
    int c[3] = {0, 0, 0};
    for (c[0] = 0; c[0] <= A[1].size(); c[0]++)
    for (int dur0 = 0; dur0 <= max1SoFar; ++dur0) {
        if (T - dur0 < 0) continue;
        if (cach1[c[0]][dur0] == 0) continue;
        for (c[1] = 0; c[1] <= A[2].size(); c[1]++)
        for (c[2] = 0; c[2] <= A[3].size(); c[2]++) {
            if (cach23[c[1]][c[2]][T - dur0] == 0) continue;
            ll x = (ll)cach1[c[0]][dur0] * cach23[c[1]][c[2]][T - dur0] % MOD;
            x = x * mu[c[0]] % MOD * mu[c[1]] % MOD * mu[c[2]] % MOD;
            inc(result, x * ways[c[0]][c[1]][c[2]][1] % MOD);
            inc(result, x * ways[c[0]][c[1]][c[2]][2] % MOD);
            inc(result, x * ways[c[0]][c[1]][c[2]][3] % MOD);
        }
    }

    cout << result << endl;
    return 0;
}
