/**
 * https://codelearn.io/FightsTask/Index?Id=120342&TaskId=69421
 *
 * Difficulty   : hard
 * Problem tags : greedy, dequeue
 *
 * Tutorial: Sử dung tham lam cho việc chọn ra chuỗi con có thứ tự từ điển nhỏ
 * nhất. Duy trì một dequeue chứa kết quả của bài toán.
 *
 * Tại mỗi vị trí i của mảng, ta xét xem có sử dụng i không, gọi phần tử cuối
 * dequeue là u. ta sẽ pop phần tử u nếu u > a[i], và sau i còn chứa phần tử u.
 * Duy trì bảng đếm các phần tử của mảng khi duyêt từng phần tử.
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

std::vector<int> smallestSq(std::vector<int> a) {
    int n = sz(a);

    deque<int> res;
    unordered_map<int, bool> used;
    unordered_map<int, int> cnt;
    for (int x : a) cnt[x]++;
    int m = cnt.size();
    for (int x : a) {
#ifdef debug
        cout << x << ": ";
#endif
        while (!res.empty() && !used[x] && res.back() > x &&
               cnt.size() >= m - res.size() && cnt[res.back()] > 0) {
            used[res.back()] = 0;
            res.pop_back();
        }
        if (!used[x]) {
            res.push_back(x);
            used[x] = 1;
        }
        cnt[x]--;
        if (cnt[x] == 0)
            cnt.erase(x);
#ifdef debug
        for (int x : res) cout << x << " ";
        EL;
#endif
    }
    return vi(res.begin(), res.end());
}

#ifdef debug
int main() {

    // smallestSq(vi({99, 98, 97, 97, 99, 97, 98, 99, 97, 97,
    //                99, 99, 97, 97, 99, 97, 98, 97, 98, 97}));

    smallestSq(vi({43, 41, 41, 1, 4, 4,  1,  50, 1,  43, 4,
                   43, 1,  13, 4, 4, 41, 50, 6,  50, 50}));

    // smallestSq(vi({}));
    // smallestSq(vi({}));
    // smallestSq(vi({}));

    EL;
    return 0;
}
#endif