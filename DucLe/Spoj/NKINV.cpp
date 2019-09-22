#include <iostream>

using namespace std;
const int N = 60001;
int n, a[N], T[N] = {0};

void Input() {
    cin >> n;
    for (int i=1; i<=n; ++i) 
        cin >> a[i];
}

void Update(int k) {
    while (k < N) {
        T[k]++;
        k += k & -k;
    }
}

int Count(int k) {
    int res = 0;
    while (k) {
        res += T[k];
        k -= k & -k;
    }
    return res;
}

void Solve() {
    long long result = 0;
    for (int i=n; i>=1; --i) {
        result += Count(a[i]-1);
        Update(a[i]);
    }
    cout << result << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    Input();
    Solve();
    return 0;
}
