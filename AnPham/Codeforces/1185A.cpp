#include <iostream>
#include <algorithm>

using namespace std;

int main() {
    int a[3], d;
    cin >> a[0] >> a[1] >> a[2] >> d;
    sort(a, a+3);
    long long res = 0;
    if (a[1] - a[0] < d) {
        res += d - (a[1] - a[0]);
    }
    if (a[2] - a[1] < d) {
        res += d - (a[2] - a[1]);
    }
    cout << res << endl;
    return 0;
}
