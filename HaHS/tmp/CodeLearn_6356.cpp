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

int maxArea(std::vector<int> a) {
    int n = a.size();
    int res = 0;

    vector<int> l(n, -1), r(n, -1);
    stack<int> st;
    for (int i = 0; i < n; i++) {
        while (!st.empty() && a[st.top()] >= a[i])
            st.pop();
        if (!st.empty())
            l[i] = st.top() + 1;
        st.push(i);
    }

    while (!st.empty())
        st.pop();

    st.push(n);
    a.push_back(0);
    for (int i = n - 1; i >= 0; i--) {
        while (!st.empty() && a[st.top()] >= a[i])
            st.pop();
        if (!st.empty())
            r[i] = st.top() - 1;
        st.push(i);
    }

    // FOR(i, 0, n - 1) { cout << i << " " << l[i] << " " << r[i] << endl; }

    FOR(i, 0, n - 1) {
        if (l[i] == -1)
            l[i] = i;
        if (r[i] == -1)
            r[i] = i;
        cout << l[i] << " " << i << " " << r[i] << endl;
        res = max(res, min(a[l[i]], a[r[i]]) * (r[i] - l[i]));
    }

    return res;
}

int main() {

    maxArea(vector<int>({4, 8, 5, 7, 5, 19, 1, 16, 19, 6}));

    return 0;
}