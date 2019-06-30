#include <cstring>
#include <algorithm>
#include <iostream>
#include <cstdio>

using namespace std;

int main() {
    freopen("input.txt", "r", stdin);
    int n; cin >> n;
    cout << 2*n*(n-1) + 1 << endl;
    return 0;
}
