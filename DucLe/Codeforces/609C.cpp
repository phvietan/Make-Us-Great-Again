#include <algorithm>
#include <cmath>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n; long long sum = 0;
    cin >> n;
    vector<int> m(n); 
    for (int i=0; i<n; ++i) {
        cin >> m[i];
        sum += m[i];
    }
    sort(m.begin(), m.end());
    long long res = 0;
    if (sum % n) {
        int k = sum % n;
        for (int i=0; i<n-k; ++i) 
            res += abs(m[i] - sum / n);
        for (int i=0; i<k; ++i)
            res += abs(m[n-k + i] - (sum / n + 1));
    } else {
        for (int i=0; i<n; ++i)
            res += abs(m[i] - sum / n);
    }
    cout << res / 2 << endl;
    return 0;
}
