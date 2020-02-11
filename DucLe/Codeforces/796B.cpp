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

int n, m, k, hole[1000010] = {0};

int main() {
    ios_base::sync_with_stdio(false);
    cin >> n >> m >> k;
    for (int i=1; i<=m; ++i) {
        int x;
        cin >> x;
        hole[x] = true;
    }
    int bone = 1;
    if (!hole[1])
    for (int i=0; i<k; ++i) {
        int x, y;
        cin >> x >> y;
        if (x == bone || y == bone) 
            bone = bone ^ x ^ y;
        if (hole[bone]) 
            break;
    }
    cout << bone << '\n';
    return 0;
}
