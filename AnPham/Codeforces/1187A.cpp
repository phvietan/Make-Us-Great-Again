#include <algorithm>
#include <iostream>
#include <cstdio>
#include <cstring>

using namespace std;

int main() {
    freopen("input.txt", "r", stdin);
    int test;
    scanf("%d", &test);
    while (test--) {
        int n, s, t;
        scanf("%d%d%d",&n,&s,&t);
        printf("%d\n", n - min(s, t) + 1);
    }
    return 0;
}
