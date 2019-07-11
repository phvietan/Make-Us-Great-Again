#include <string>
#include <cstring>
#include <algorithm>
#include <cstdio>
#include <iostream>

using namespace std;

const int N = 1000005;
string a, b;
int LSP[N*2];

void initLSP(string & a, string & b) {
    int j = 0;
    int n = a.length(), m = b.length();
    string c = b + '@' + a;
    for (int i = 1; i < c.length(); ++i) {
        while (j && c[i] != c[j]) j = LSP[j-1];
        if (c[i] == c[j]) ++j;
        LSP[i] = j;
        if (j == m) {
            printf("%d ", i - 2*m + 1);
        }
    }
}

int main() {
    freopen("input.txt","r",stdin);
    cin >> a >> b;

    initLSP(a, b);
    return 0;
}
