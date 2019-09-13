/**
 * https://codelearn.io/FightsTask/Index?Id=120342&TaskId=86094
 *
 * Difficulty   : medium
 * Problem tags : binary index tree
 *
 * Tutorial: tính chất bất biến trong quá trình biến đổi từ mảng đã được sort
 * ban đầu sau các bước biến đổi là số lượng bộ i < j và a[i] > a[j] là số chẵn
 *
 * Do đó có thể check tính chất này của mảng sau cùng xem số bộ nghịch thế là số
 * chẵn không
 */

#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef vector<int> vi;
typedef pair<int, int> ii;

#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster ios_base::sync_with_stdio(false) && cin.tie(NULL)

const int N = 1e5 + 5;
int t[N];

void upd(int x, int v) {
    for (; x > 0; x -= x & -x) t[x] += v;
}

ll get(int x) {
    ll res = 0ll;
    for (; x < N; x += x & -x) res += t[x];
    return res;
}

bool beautifulLine(std::vector<int> a) {
    ll total = 0ll;
    // memset(t, 0, N);
    for (int x : a) {
        total += get(x + 1);
        upd(x + 1, 1);
    }
    cout << total % 2 << endl;
    return total % 2 == 0;
}

int main() {
    beautifulLine(vi({96, 68, 5, 69, 8, 42, 15, 83, 26, 91}));
    beautifulLine(vi({34, 36, 27, 59, 10, 48, 91, 29}));
    beautifulLine(vi({96, 68, 73, 76, 77, 14, 48, 84, 95, 63}));
    beautifulLine(vi({64, 33, 98, 56, 37, 7, 12, 77, 78, 44, 49, 82, 20, 23, 24,
                      26, 61, 94}));
    beautifulLine(vi({}));
    beautifulLine(vi({}));
    beautifulLine(vi({}));

    EL;
    return 0;
}