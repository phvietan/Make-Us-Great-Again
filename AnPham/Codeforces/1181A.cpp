#include <iostream>
#include <cstdio>

using namespace std;

int main() {
    freopen("input.txt", "r", stdin);
    long long a, b, c;
    cin >> a >> b >> c;
    long long d1 = a % c, d2 = b % c;
    if (d1 + d2 >= c) {
        cout << a/c + b/c + 1 << " " << c - max(d1, d2) << endl;
    }
    else cout << a/c + b/c << " " << 0 << endl;
    return 0;
}
