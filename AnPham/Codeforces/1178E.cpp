#include <algorithm>
#include <cstring>
#include <string>
#include <iostream>
#include <cstdio>
#include <ctime>

using namespace std;

const int N = 1000005;

string s;
bool F[N];

int main() {
    srand(time(NULL));
    freopen("input.txt", "r", stdin);
    cin >> s;
    int n = s.length();
    int L = 0, R = n - 1;
    int remL = -1, remR = -1;

    while (L < R) {
        if (s[L] == s[R]) {
            F[L] = F[R] = true;
            remL = L; remR = R;
            ++L; --R;
        }
        else if (s[L] == s[R-1] && L != R-1) {
            --R;
            F[L] = F[R] = true;
            remL = L; remR = R;
            ++L; --R;
        }
        else if (s[L+1] == s[R] && L+1 != R) {
            ++L;
            F[L] = F[R] = true;
            remL = L; remR = R;
            ++L; --R;
        }
        else if (s[L+1] == s[R-1] && L+1 != R-1) {
            ++L; --R;
            F[L] = F[R] = true;
            remL = L; remR = R;
            ++L; --R;
        }
        else {
            int x = rand() % 2;
            if (x==0) ++L;
            else --R;
        }
    }
    if (remL == -1) F[0] = true;
    else {
        if (remL + 1 <= remR - 1) F[remL] = true;
    }
    for (int i = 0; i < n; ++i)
        if (F[i]) printf("%c", s[i]);
    printf("\n");
    return 0;
}
