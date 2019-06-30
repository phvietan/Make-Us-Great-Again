#include <iostream>
#include <cstdio>
#include <algorithm>

using namespace std;

const int N = 200005;

int t[N];
int F[105];
int n, m;

int main() {
    //freopen("input.txt", "r", stdin);
    scanf("%d%d",&n, &m);
    for (int i = 1; i <= n; ++i)
        scanf("%d",&t[i]);
    printf("0");
    F[t[1]]++;
    for (int i = 2; i <= n; ++i) {
        int timeLeft = m - t[i];
        int cnt = 0;
        for (int i = 1; i <= 100; ++i) {
            if (timeLeft - i*F[i] >= 0) {
                timeLeft -= i*F[i];
                cnt += F[i];
            }
            else {
                cnt += timeLeft / i;
                timeLeft %= i;
            }
        }
        printf(" %d", i-1-cnt);
        F[t[i]]++;
    }
    printf("\n");
    return 0;
}
