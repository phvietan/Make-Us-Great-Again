#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cmath>
#include <string>
#include <cstring>
#include <map>
#include <set>
#include <vector>

using namespace std;

const int N = 5005;

int n;
int a[N], b[N], similarLeft[N], similarRight[N];
int similarMid[N][N];

void getSimilarities(int * a, int * b) {
    similarLeft[0] = 0;
    for (int i = 1; i <= n; ++i)
        similarLeft[i] = similarLeft[i-1] + (a[i] == b[i]);
    similarRight[n+1] = 0;
    for (int i = n; i >= 1; --i)
        similarRight[i] = similarRight[i+1] + (a[i] == b[i]);
    for (int i = 1; i <= n; ++i) {
        similarMid[i][i] = (a[i] == b[i]);
        if (i < n) similarMid[i][i+1] = (a[i] == b[i+1]) + (a[i+1] == b[i]);
    }
    for (int len = 3; len <= n; ++len)
    for (int i = 1; i <= n-len+1; ++i) {
        int j = i+len-1;
        similarMid[i][j] = similarMid[i+1][j-1] + (a[i] == b[j]) + (a[j] == b[i]);
    }
}

int main() {
	//freopen("input.txt", "r", stdin);
    int numTest;
    scanf("%d",&numTest);
    for (int it = 1; it <= numTest; it++) {
        printf("Case #%d\n", it);
        scanf("%d",&n);
        for (int i = 1; i <= n; ++i) scanf("%d",&a[i]);
        for (int i = 1; i <= n; ++i)
            scanf("%d",&b[i]);
        getSimilarities(a, b);

        int res = 0;
        for (int i = 1; i <= n; ++i)
        for (int j = i; j <= n; ++j) {
            res = max(res, similarLeft[i-1] + similarRight[j+1] + similarMid[i][j]);
        }

        printf("%d\n", res);
    }
	return 0;
}
