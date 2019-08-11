/**
 * https://codeforces.com/contest/1200/problem/A
 *
 * Difficulty   : easy
 * Problem tags : implementation
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
int n, a[15];
string s;

int main() {

    cin >> n >> s;
    for (char c : s) {
        if (c == 'L') {
            FOR(i, 1, 10) {
                if (a[i] == 0) {
                    a[i] = 1;
                    break;
                }
            }
        } else if (c == 'R') {
            FOD(i, 10, 1) {
                if (a[i] == 0) {
                    a[i] = 1;
                    break;
                }
            }
        } else {
            int t = c - '0';
            a[t + 1] = 0;
        }
    }
    FOR(i, 1, 10) cout << a[i];
    EL;

    return 0;
}