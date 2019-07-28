/**
 * http://codeforces.com/contest/1197/problem/B
 *
 * Difficulty   : easy
 * Problem tags : math, greedy
 *
 * Tutorial: Điều kiện để chồng được thành 1 là bán kính hội tụ tại một điểm
 * giữa từ 2 phía (tăng dần trái, giảm dần phải)
 */

#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> ii;
typedef unsigned long long ull;

#define X first
#define Y second
#define pb push_back
#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster                                                                 \
    ios_base::sync_with_stdio(false);                                          \
    cin.tie(NULL);                                                             \
    cout.tie(NULL);

const int N = 2e5 + 5;
int n, a[N];

int main() {

    cin >> n;
    FOR(i, 1, n) cin >> a[i];

    int i = 1;
    while (i + 1 <= n && a[i + 1] > a[i])
        i++;
    while (i + 1 <= n && a[i + 1] < a[i])
        i++;

    if (i == n)
        puts("YES");
    else
        puts("NO");

    return 0;
}