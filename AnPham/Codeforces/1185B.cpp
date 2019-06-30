#include <iostream>
#include <cstdio>
#include <cstring>
#include <string>

using namespace std;

const char * RESULT[2] = {"NO", "YES"};

int n;
char c0[1000005], c1[1000005];

bool getResult(char * a, char * b) {
    int i = 0, j = 0, n = strlen(a), m = strlen(b);
    while (i < n || j < m) {
        int cnta = 0, cntb = 0;
        if (a[i] != b[j]) return false;
        while (i < n-1 && a[i] == a[i+1]) {
            ++i;
            cnta++;
        }
        while (j < m-1 && b[j] == b[j+1]) {
            ++j;
            cntb++;
        }
        if (cnta > cntb) return false;
        ++i;
        ++j;
    }
    return true;
}

int main() {
    //freopen("input.txt", "r", stdin);
    scanf("%d\n", &n);
    while (n--) {
        scanf("%s\n", c0);
        scanf("%s\n", c1);
        printf("%s\n", RESULT[getResult(c0, c1)]);
    }
    return 0;
}
