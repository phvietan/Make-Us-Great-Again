#include <cstdio>
#include <cmath>
#include <iostream>

using namespace std;

int gcd(int a, int b, int & x, int & y) {
    if (a == 0) {
        x = 0; y = 1;
        return b;
    }
    int g = gcd(b % a, a, x, y);
    int x2 = y - b/a*x;
    int y2 = x;

    x = x2;
    y = y2;
    return g;
}

int main() {
    int a, b;
    cin >> a >> b;
    int x, y, g;

    g = gcd(a, b, x, y);
    cout << g << " = " << a << "*" << x << " + " << b << "*" << y << endl;

    return 0;
}
