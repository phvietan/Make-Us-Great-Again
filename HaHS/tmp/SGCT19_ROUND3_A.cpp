/**
 * Difficulty   : ...
 * Problem tags : ...
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
int s, g, dd[N];
int U = -9999, V = 99999;
vector<int> a[N];
vector<ii> trans;
map<ii, string> mm;
ii tr[N];

#define f(x) (x + 9999)

int getNum(string s, int i) {
    int r = 0;
    FOR(j, i, s.size()) {
        if (s[j] == ']')
            break;
        r = r * 10 + (s[j] - '0');
    }
    return r;
}

int sumDigit(int x) {
    int t = 0;
    int y = x;
    x = abs(x);
    while (y > 0)
        t += x % 10, x /= 10;
    if (y >= 0)
        return t;
    return -t;
}

int reverseDigits(int x) {
    int t = 0;
    int y = x;
    x = abs(x);
    while (y > 0) {
        t = t * 10 + x % 10;
        x /= 10;
    }
    if (y >= 0)
        return t;
    return -t;
}

int reverseDigits(int x) {
    int t = 0;
    int y = x;
    x = abs(x);
    while (y > 0) {
        t = t * 10 + x % 10;
        x /= 10;
    }
    if (y >= 0)
        return t;
    return -t;
}

void handle(string s) {
    if (s[1] == 'S') { // Sum
        FOR(i, U, V) {
            int t = sumDigit(i);
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({0, 0});
        mm[{0, 0}] = s;
    } else if (s[1] == 'R') { // Reverse
        FOR(i, U, V) {
            int t = reverseDigits(i);
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({1, 0});
        mm[{1, 0}] = s;
    } else if (s[1] == '+' && s[2] == '/') { // +/-
        FOR(i, U, V) {
            int t = -i;
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({2, 0});
        mm[{2, 0}] = s;

    } else if (s[1] == '+') { // +N
        int x = getNum(s, 2);
        FOR(i, U, V) {
            int t = i + x;
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({3, x});
        mm[{3, x}] = s;

    } else if (s[1] == '-') { // -N
        int x = getNum(s, 2);
        FOR(i, U, V) {
            int t = i - x;
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({4, x});
        mm[{4, x}] = s;

    } else if (s[1] == 'x') { // xN
        int x = getNum(s, 2);
        FOR(i, U, V) {
            int t = i * x;
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({5, x});
        mm[{5, x}] = s;

    } else if (s[1] == '/') { // /N
        int x = getNum(s, 2);
        FOR(i, U, V) {
            int t = i / x;
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({6, x});
        mm[{6, x}] = s;

    } else if (s[1] == '<') { // delete
        FOR(i, U, V) {
            int t = i / 10;
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({7, 0});
        mm[{7, 0}] = s;

    } else { // insert N
        int x = getNum(s, 1);
        FOR(i, U, V) {
            int t = i * 10 + x;
            if (U <= t && t <= V)
                a[f(i)].push_back(f(t));
        }
        trans.push_back({8, x});
        mm[{8, x}] = s;
    }
}

int main() {

    cin >> s >> g;
    string yy;
    FOR(i, 1, 9) {
        cin >> yy;
        handle(yy);
    }

    queue<int> st;
    st.push(s);
    tr[f(s)] = {-1, -1};

    while (!st.empty()) {
        int u = st.front();
        st.pop();
        for (ii t : trans) {
            if (t.X == 0) {
                int y = sumDigit(u);
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            } else if (t.X == 1) {
                int y = reverseDigits(u);
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            } else if (t.X == 2) {
                int y = -u;
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            } else if (t.X == 3) {
                int y = u + t.Y;
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            } else if (t.X == 4) {
                int y = u - t.Y;
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            } else if (t.X == 5) {
                int y = u * t.Y;
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            } else if (t.X == 6) {
                int y = u / t.Y;
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            } else if (t.X == 7) {
                int y = u / 10;
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            } else if (t.X == 8) {
                int y = u * 10 + t.Y;
                if (U <= y && y <= V) {
                    if (!dd[y]) {
                        st.push(y);
                        dd[y] = 1;
                        tr[y] = t;
                    }
                }
            }
        }
    }

    return 0;
}