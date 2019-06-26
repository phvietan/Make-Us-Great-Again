#include <algorithm>
#include <iostream>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

const int N = 300002;
int n, k;
int arr[N], pos_of_sum[N];
long long sum[N];

bool compare_sum(int pos_1, int pos_2) {
    return sum[pos_1] < sum[pos_2];
}

int main() {
    ios_base::sync_with_stdio(false);
    cin >> n >> k;
    for (int i=1; i<=n; ++i) {
        cin >> arr[i];
    }

    sum[n+1] = 0;
    for (int i=n; i>=1; --i) {
        pos_of_sum[i] = i;
        sum[i] = sum[i+1] + arr[i];
    }

    sort(pos_of_sum + 2, pos_of_sum + n + 1, compare_sum);
    long long res = sum[1];
    for (int i=n; i>=n-k+2; --i)
        res += sum[pos_of_sum[i]];
    cout << res;
    return 0;
}
