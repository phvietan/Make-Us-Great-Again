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

int n, a[102];

int main() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
    a[0] = 0; a[n+1] = 1001;

    int answer = 0;
    for (int i=0; i<=n; ++i)
        for (int j=i+1; j<=n+1; ++j)
            if (a[i] - i == a[j] - j)
            maximize(answer, j-i-1);
    cout << answer << endl;
    return 0;
}
