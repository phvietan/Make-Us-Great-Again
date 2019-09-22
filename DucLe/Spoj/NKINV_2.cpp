#include <iostream>

using namespace std;
const int N = 60002;
int n, a[N], T[N] = {0};

void Input() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
}

void Update(int k) {
    while (k <= 60000) {
        T[k]++;
        k += k & -k;
    }
}

int Count(int k) {
    int result = 0;
    while (k) {
        result += T[k];
        k -= k & -k;
    }
    return result;
}

void Solve() {
    long long result = 0;
    for (int i=1; i<=n; ++i) {
        result += Count(60000-a[i]);
        Update(60000-a[i]+1);
    }
    cout << result << endl;
}

int main() {
    ios_base::sync_with_stdio(false);
    Input();
    Solve();
    return 0;
}
