/**
 * https://codelearn.io/Training/Detail?Id=3172
 *
 * Difficulty   : medium
 * Problem tags : string, binary search
 *
 * Tutorial: Chặt nhị phần chiều dài tối đa của chuỗi con, với chiều dài cố
 * định, kiểm tra từng khung cửa sổ xem có đoạn nào có số lần xuất hiện tối
 * thiểu k, nếu có thì chiều dài đó OK. Dùng mã hóa hệ cơ số 26 cho từng chuỗi
 * con, dùng 2 giá trị dư để tăng độ chính xác
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

// #define debug 1

const int BASE = 26;
const int M1 = 1e9 + 9;
const int M2 = 1e9 + 7;

ll power(ll x, ll n, int mod) {
    if (n == 0)
        return 1ll;
    ll t = power(x, n / 2, mod);
    if (n % 2)
        return t * t % mod * x % mod;
    return t * t % mod;
}

bool ok(string s, int m, int k) {
    int n = sz(s);
    int x1 = 0, x2 = 0;
    FOR(i, 0, m - 1) {
        x1 = 1ll * x1 * BASE + (s[i] - 'a') % M1;
        x2 = 1ll * x2 * BASE + (s[i] - 'a') % M2;
    }
    unordered_map<int, int> c1, c2;
    c1[x1]++;
    c2[x2]++;
    int maxC = 1;
    int p1 = power(BASE, m - 1, M1);
    int p2 = power(BASE, m - 1, M2);
    FOR(i, m, n - 1) {
        x1 = ((x1 % p1) * 1ll * BASE % M1 + (s[i] - 'a')) % M1;
        x2 = ((x2 % p2) * 1ll * BASE % M2 + (s[i] - 'a')) % M2;
        c1[x1]++;
        c2[x2]++;
        maxC = max(maxC, min(c1[x1], c2[x2]));
    }
    return maxC >= k;
}

int dtksub(std::string s, int k) {
    int n = sz(s);
    int l = 1, r = n, x = 0;
    while (l <= r) {
        int m = (l + r) >> 1;
        if (ok(s, m, k)) {
            x = m;
            l = m + 1;
        } else {
            r = m - 1;
        }
    }
    return x;
}

#ifdef debug
int main() {

    cout << dtksub("xxxxx", 2) << endl;
    cout << dtksub("abababab", 3) << endl;

    EL;
    return 0;
}
#endif