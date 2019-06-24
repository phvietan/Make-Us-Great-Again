#include <cstdio>
#include <iostream>

using namespace std;

typedef long long ll;

int main() {
    int n;
    scanf("%d",&n);
    if (n & 1) printf("0\n");
    else {
        n /= 2;
        ll res = 1;
        while (n--) res *= 2;
        printf("%I64d\n", res);
    }
    return 0;
}
