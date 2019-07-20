#include <algorithm>
#include <cstdio>
#include <iostream>
#include <cstring>
#include <string>
#include <vector>
#include <cmath>

using namespace std;

#define pb push_back

const int N = 1005;

vector <int> adj[N];
bool F[N][N];
int deg[N];
int n, m;

void addEdge(int i, int j) {
    adj[i].pb(j);
    adj[j].pb(i);
    F[i][j] = F[j][i] = true;
    deg[i]++;
    deg[j]++;
    m += 1;
}
void taoBac3(int i) {
    addEdge(i, i+1);
    addEdge(i+1, i+2);
    addEdge(i, i+2);
}

bool isPrime(int n) {
    if (n == 1) return false;
    int k = sqrt(n);
    for (int i = 2; i <= k; ++i)
        if (n % i == 0) return false;
    return true;
}

int findNextPrime(int x) {
    while (!isPrime(x)) ++x;
    return x;
}

void xuat() {
    printf("%d\n", m);
    for (int i = 1; i <= n; ++i)
    for (int j = 0; j < adj[i].size(); ++j) {
        int v = adj[i][j];
        if (i < v) printf("%d %d\n", i, v);
    }
}

int main() {
    freopen("input.txt", "r", stdin);
    scanf("%d",&n);
    int last = 0;
    for (int i = 1; i < n; i += 3){
        if (i+2 > n) {
            last = i-1;
            break;
        }
        taoBac3(i);
        last = i+2;
    }
    if (last != n) {
        addEdge(n, last);
        if (n-1 != last) {
            addEdge(n-1, last-1);
            addEdge(n, n-1);
        } else {
            addEdge(n, last-1);
        }
    }
    int k = findNextPrime(m) - m;
    int cur = 1, nxt = 2;
    while (k > 0) {
        while (nxt <= n && (F[cur][nxt] || deg[nxt] == 3)) ++nxt;
        if (nxt > n) {
            cout << -1 << endl;
            return 0;
        }
        addEdge(cur, nxt);
        --k;
        cur++;
    }
    xuat();
    return 0;
}
