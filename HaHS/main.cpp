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

int n, res = 1e9, useA[15], useB[15];
vector<ii> a, b;

int inputTime(stringstream &ss) {
    int x = 0;
    string s = "";
    ss >> x >> s;
    if (s == "AM") {
        if (x == 12)
            x = 0;
    } else {
        if (x < 12)
            x += 12;
    }
    return x;
}

void init(vector<string> sa, vector<ii> &a) {
    ii t;
    string k;
    for (string s : sa) {
        stringstream ss(s);
        t.first = inputTime(ss);
        ss >> k;
        t.second = inputTime(ss);
        a.push_back(t);
    }
    // for (ii x : a) printf("%d %d\n", x.first, x.second);
}

int getTime(int x, int y) { // 0 <= x,y < 24
    if (x <= y) {
        int t = y - x;
        return t >= 5 ? t : t + 24;
    }
    int t = 24 - x + y;
    return t >= 5 ? t : t + 24;
}

void solve(int idx, int cur, ii lastA, ii lastB) {
    if (cur >= res)
        return;
    if (idx == n) {
        res = cur;
        return;
    }
    // printf("%d %d | %d %d\n", lastA.first, lastA.second, lastB.first,
    // lastB.second);

    FOR(i, 0, n - 1) FOR(j, 0, n - 1) {
        if (!useA[i] && !useB[j]) {
            useA[i] = useB[j] = 1;
            ii curA = idx % 2 == 0 ? a[i] : b[j];
            ii curB = idx % 2 == 0 ? b[j] : a[i];
            int addt = 0;
            if (idx) {
                addt += getTime(lastA.second, curA.first);
                addt += getTime(lastB.second, curB.first);
                cur += addt;
            }
            solve(idx + 1, cur, curA, curB);
            cur -= addt;
            useA[i] = useB[j] = 0;
        }
    }
}

int minimumLayover(vector<string> sa, vector<string> sb) {
    n = sz(sa);
    init(sa, a);
    init(sb, b);
    solve(0, 0, {}, {});
    return res;
}

#ifdef debug
int main() {
    // cout << minimumLayover(vector<string>({}), vector<string>({}));

    // cout << minimumLayover(vector<string>({"6 AM - 8 AM", "8 AM - 10 AM"}),
    //                        vector<string>({"9 AM - 11 AM", "7 PM - 9 PM"}));

    cout << minimumLayover(
        vector<string>({"1 AM - 3 AM", "4 AM - 6 AM", "11 AM - 1 PM",
                        "2 PM - 4 PM", "8 PM - 10 PM", "8 PM - 11 PM"}),
        vector<string>({"3 AM - 4 AM", "8 AM - 10 AM", "9 AM - 11 AM",
                        "7 AM - 10 AM", "7 PM - 9 PM", "8 PM - 11 PM"}));

    EL;
    return 0;
}
#endif