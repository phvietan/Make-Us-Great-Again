#include <iostream>

using namespace std;
const int N = 105;
int a[N], n;

int minimize(int &a, int b) {
    if (b < a) a = b;
    else return false;
    return true;
}

void solve() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
    int done = 0, pos = 1;
    while (pos < n && done < n) {
        int minValue = 1e9, posOfMin = 0;
        for (int i=pos; i<=n; ++i) 
            if (minimize(minValue, a[i])) {
                posOfMin = i;
            }
        if (minValue != 1e9) {
            if (minValue == posOfMin) {
                done = posOfMin;
                pos = done+1;
            } else {
                for (int j=posOfMin-1; j>done; --j)
                    swap(a[j], a[j+1]);
                done = posOfMin-1;
                pos = posOfMin;
            }
        }
    }
    for (int i=1; i<=n; ++i)
        cout << a[i] << ' ';
    cout << endl;
}

int main() {
    int test;
    cin >> test;
    for (; test; test--) 
        solve();
    return 0;
}
