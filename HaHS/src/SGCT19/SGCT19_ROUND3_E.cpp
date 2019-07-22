/**
 * Difficulty   : dễ
 * Problem tags : brute force, implementation
 *
 * Tutorial: brute force kết quả 7K-tags, ở mỗi giá trị K, kiểm tra có thỏa điều
 * kiện đề không< lưu ý trường hợp ở round cuối có thể không đủ, do đó chỉ check
 * không vượt quá K lần xuất hiện ở mỗi loại gạch.
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

char tt[]{'I', 'J', 'L', 'O', 'S', 'T', 'Z'};

int main() {

    string s;
    getline(cin, s);
    int n = sz(s);
    FOR(res, 1, n) {
        int len = res * 7;
        int r = n / len;
        bool ok = true;
        FOR(u, 1, r) {
            if (!ok)
                break;
            int i = (u - 1) * len;
            map<char, int> c;
            FOR(k, 0, len - 1) {
                int g = i + k;
                c[s[g]]++;
            }
            FOR(i, 0, 6) {
                if (c[tt[i]] != res) {
                    ok = false;
                    break;
                }
            }
        }
        if (!ok)
            continue;
        if (n % len > 0) {
            int u = r + 1;
            int i = (u - 1) * len;
            map<char, int> c;
            FOR(k, 0, len - 1) {
                int g = i + k;
                c[s[g]]++;
            }
            FOR(i, 0, 6) {
                if (c[tt[i]] > res) {
                    ok = false;
                    break;
                }
            }
        }
        if (ok) {
            cout << res * 7 << endl;
            return 0;
        }
    }

    return 0;
}