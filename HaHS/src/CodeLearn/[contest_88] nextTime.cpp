/**
 * https://codelearn.io/FightsTask/Index?Id=126094&TaskId=125944
 *
 * Difficulty   : easy
 * Problem tags :
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

#define f(i) (s[i] - '0')

string fmt(int h, int m) {
    char res[5];
    sprintf(res, "%02d:%02d", h, m);
    return string(res);
}

std::string nextTime(std::string s) {
    int h = f(0) * 10 + f(1);    // 00 -> 23
    int m = f(3) * 10 + f(4);    // 00 -> 59
    int revh = f(1) * 10 + f(0); // 00 -> 91
    if (revh < 60) {             // 00 -> 59
        if (m < revh) {          // m --> revh
            return fmt(h, revh);
        }
    }
    for (;;) {
        h = (h + 1) % 24;                // 00 -> 23
        revh = (h % 10) * 10 + (h / 10); // 00 -> 91
        if (revh < 60) {
            return fmt(h, revh);
        }
    }
}

#ifdef debug
int main() {

    EL;
    return 0;
}
#endif