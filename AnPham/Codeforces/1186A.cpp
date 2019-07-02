#include <cstdio>
#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int n, m, k;
    cin >> n >> m >> k;
    if (n <= min(m, k)) cout << "Yes" << endl;
    else cout << "No" << endl;
    return 0;
}
