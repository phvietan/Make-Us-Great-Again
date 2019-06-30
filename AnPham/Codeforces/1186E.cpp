#include <iostream>
#include <cstdio>
#include <algorithm>
#include <map>

using namespace std;

int n, m;

void sum(void * c, int n, int m) {
    int (*b)[n][m] = (int (*)[n][m]) c;
    int sum = 0;
    for (int i = 0; i < n; ++i)
    for (int j = 0; j < m; ++j) {
        sum += (*b)[i][j];
    }
    cout << sum << endl;
}

int main() {
    freopen("input.txt", "r", stdin);
    cin >> n >> m;
    int a[2][3];
    for (int i = 0; i < n; ++i)
    for (int j = 0; j < m; ++j)
        cin >> a[i][j];
//    int a[2][3] = {
//        {1, 2, 3},
//        {1, 2, 3}
//    };

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) cout << a[i][j] << " ";
        cout << endl;
    }

    sum(a, 2, 3);
    return 0;
}

