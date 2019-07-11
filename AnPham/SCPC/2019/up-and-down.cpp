#include <iostream>
#include <algorithm>
#include <cstdio>

using namespace std;

const int N = 1000005;

int F[N], G[N];

int dp(int x) {
    if (F[x]) return F[x];
    if (x == 1) return 0;
    if (x & 1) F[x] = dp(x+1) + 1;
    else F[x] = dp(x/2) + 1;
    return F[x];
}

int main(int argc, char** argv)
{
    //freopen("input.txt", "r", stdin);
    for (int i = 1; i <= 1000000; ++i)
        G[i] = G[i-1] + dp(i);
	int T, test_case;
	scanf("%d",&T);
	for(test_case = 0; test_case < T; test_case++) {
        int N1, N2; scanf("%d%d",&N1, &N2);
        printf("Case #%d\n", test_case + 1);
        printf("%d\n", G[N2] - G[N1 - 1]);
	}

	return 0;//Your program should return 0 on normal termination.
}
