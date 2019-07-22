/**
 * Difficulty   : khó
 * Problem tags : bit, sortings
 *
 * Tutorial: sort các điểm tăng dần theo x, y. Duyệt các điểm theo thứ tự này,
 * tại mỗi trục x đang duyệt, duyêt trên từng đoạn y của trục x này, giả sử tại
 * trục x0, đang xét trên đoạn y[i-1] .. y[i], tức đang xét 2 điểm (x0, y[i-1])
 * và (x0, y[i]), ta đếm xem trong đoạn từ (y[i-1]+1 --> y[i]-1) có bao nhiêu
 * điểm có thể làm điểm trung tâm, tức có bao nhiêu trục y trong đoạn này. Sử
 * dụng BIT để đếm, cập nhật lại số trục trên từng đoạn sau khi duyệt từng trục
 * x, đánh dâú các điểm mở hoặc đóng một trục y để cập nhật.
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

struct point {
    int x, y;
};

bool operator<(const point &u, const point &v) {
    return u.x < v.x || (u.x == v.x && u.y < v.y);
}

const int N = 1e5 + 5;
int n, t[N];
point a[N];
vector<int> py[N];

int retrieve(int x) {
    int res = 0;
    for (; x > 0; x -= x & -x) {
        res += t[x];
    }
    return res;
}

void update(int x, int v) {
    for (; x <= N; x += x & -x) {
        t[x] += v;
    }
}

int main() {

    faster;

    cin >> n;
    FOR(i, 1, n) {
        cin >> a[i].x >> a[i].y;
        a[i].x++;
        a[i].y++;
    }

    sort(a + 1, a + n + 1);

    FOR(i, 1, n) py[a[i].y].push_back(a[i].x);

    // FOR(i, 1, n) { cout << a[i].x << " " << a[i].y << endl; }
    // for (auto x : py[3])
    //     cout << x << " ";
    // EL;

    int i = 1;
    ll res = 0ll;
    while (i <= n) {
        int j = i - 1, x = a[i].x;
        while (j + 1 <= n && a[j + 1].x == x) {
            j++;
        }

        // cout << i << " " << j << endl;

        FOR(k, i + 1, j) {
            int top = a[k].y, bot = a[k - 1].y;
            res += retrieve(top - 1) - retrieve(bot);
        }

        FOR(k, i, j) {
            int y = a[k].y;
            int l = py[y].size();
            if (l <= 1)
                continue;
            if (py[y][0] == x) {
                // start interval on y
                update(y, 1);
            } else if (py[y][l - 1] == x) {
                // finish interval on y
                update(y, -1);
            }
        }

        i = j + 1;
    }

    cout << res << endl;

    return 0;
}