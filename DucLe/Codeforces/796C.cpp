#include <algorithm>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <cstring>
#include <string>
#include <vector>
#include <cstdio>
#include <stack>    
#include <queue>
#include <deque>
#include <ctime>
#include <cmath>

#define fi first
#define se second
#define mp make_pair
#define pb push_back
#define debug(x) cout << x << ' ';
#define debun(x) cout << x << '\n';

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

typedef pair<int,int> ii;
typedef long long ll;
const int N = 300020;

vector<int> adj[N];
int a[N];
int c1[N], cnt1;
int c2[N], cnt2;
int n, x, y;

void Input() {
    cin >> n;
    for (int i = 1; i <= n; i++) {
        cin >> a[i];
    }
    for (int i = 1; i < n; i++) {
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
}

void Solve() {
    int ans = a[1];
    for (int i = 1; i <= n; i++) {
        maximize(ans, a[i]);
    }

    int duc = -1;
    for (int i = 1; i <= n; i++) {
        if (ans == a[i]) {
            c1[i]++;
            for (int j: adj[i]) {
                c1[j]++;
            }
            cnt1++;
            duc = i;
        }
        if (ans == a[i] + 1) {
            c2[i]++;
            for (int j: adj[i]) {
                c2[j]++;
            }
            cnt2++;
        }
    }

    int m1 = 0;
    int m2 = 0;

    for (int i = 1; i <= n; i++) {
        maximize(m1, c1[i]);
        maximize(m2, c2[i]);
    }

    if (cnt1 == 1 && c2[duc] == cnt2) {
        cout << ans << '\n';
    } else if (m1 == cnt1) {
        cout << ans + 1 << '\n';
    } else {
        cout << ans + 2 << '\n';
    }
}

int main() {
    Input();
    Solve();
    return 0;
}
