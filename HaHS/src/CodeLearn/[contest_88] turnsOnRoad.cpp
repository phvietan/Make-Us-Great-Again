/**
 * https://codelearn.io/FightsTask/Index?Id=126094&TaskId=121022
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

#define debug 1

int turnsOnRoad(int x, int y) {
    if (x == 0 && y == 0)
        return 0;
    int g = max(abs(x), abs(y));
    int res, curX, curY;
    if (y == -g) {
        curX = curY = -g;
        res = g * 4 - 1;
    } else {
        curX = curY = -(g - 1);
        res = (g - 1) * 4 - 1;
    }
#ifdef debug
    cout << curX << " " << curY << " " << res << endl;
#endif
    if (x == curX && y == curY) // 1 point
        return res;
    res++;         // on y < 0
    if (y == curY) // this line
        return res;
    res++;              // on x > 0
    if (x == -curX + 1) // this line
        return res;
    res++;              // on y > 0
    if (y == -curY + 1) // this line
        return res;
    res++; // on x < 0

    return res;
}

#ifdef debug
int main() {

    // cout << turnsOnRoad(1, -1);
    // cout << turnsOnRoad(1, 1); // 1
    // cout << turnsOnRoad(3, 5); // 18

    EL;
    return 0;
}
#endif