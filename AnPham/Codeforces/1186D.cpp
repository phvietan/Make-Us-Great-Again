#include <algorithm>
#include <cstring>
#include <iostream>
#include <cstdio>

using namespace std;

const int N = 100005;

int b[N];
bool remember[N];

int getFloor(string s, int rem) {
    int start = 0;
    if (s[0] == '-') start = 1;
    int k = 0;
    for (int i = start; i < s.length(); ++i)
        k = k*10 + s[i] - '0';
    if (start == 1) k *= -1;
    else k += rem;
    return k;
}

int main() {
    freopen("input.txt", "r", stdin);
    int n;
    cin >> n;
    int sum = 0;
    for (int i = 1; i <= n; ++i) {
        string s;
        cin >> s;
        string se = s.substr(s.length() - 5, 5);
        int k = 0;
        for (int i = 0; i < se.length(); ++i)
            k = k * 10 + se[i] - '0';
        int rem = 1;
        if (k == 0) {
            rem = 0;
            remember[i] = true;
        }
        b[i] = getFloor(s.substr(0, s.length() - 6), rem);
        sum += b[i];
    }

    int i = 1;
    while (sum > 0) {
        if (!remember[i]) {
            b[i] -= 1;
            sum -= 1;
        }
        ++i;
    }
    for (int i = 1; i <= n; ++i)
        printf("%d\n", b[i]);
    return 0;
}
