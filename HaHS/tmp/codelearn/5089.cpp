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

const int N = 1005;
int n, l[N], r[N], md;
int sum[N], a[N];

void dfs(int u, int dept) {
    if (u < 1 || u > n)
        return;

    sum[dept] += a[u];
    md = max(md, dept);
    dfs(l[u], dept + 1);
    dfs(r[u], dept + 1);
}

int treeBottom(std::string s) {
    n = 0;
    stack<int> st;
    int ls = sz(s), i = 0;
    while (i < ls) {
        char c = s[i];
        if (c == '(') {
            st.push(-2);
        } else if (c == ')') {
            if (st.top() == -2) { // ...() null node
                st.pop();
                st.push(-1);      // null node marked -1
            } else {              // stack = ... Node, Left, Right
                int u = st.top(); // right
                st.pop();
                int v = st.top(); // left
                st.pop();
                int k = st.top(); // node
                st.pop();
                l[k] = v;
                r[k] = u;
                st.pop(); // pop -2 = (
                st.push(k);
            }
        } else if ('0' <= c && c <= '9') {
            int v = int(c - '0');
            while (i + 1 < ls && '0' <= s[i + 1] && s[i + 1] <= '9') {
                v = v * 10 + int(s[++i] - '0');
            }
            a[++n] = v;
            l[n] = r[n] = -1; // left node, right node are null, marked -1
            st.push(n);       // new node n pushed to stack
        }
        i++;
    }

    md = 0;                  // max depth
    FOR(i, 0, n) sum[i] = 0; // sum values with depth i
    dfs(1, 0);

    return sum[md];
}

#ifdef debug
int main() {

    string s;
    getline(cin, s);
    cout << treeBottom(s) << endl;

    EL;
    return 0;
}
#endif