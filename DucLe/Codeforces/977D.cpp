#include <iostream>
#include <queue>
#include <vector>

using namespace std;
int n, deg_in[105] = {0};
vector<int> adj[105];
long long a[105];
queue<int> q;
vector<int> result;

int main() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        cin >> a[i];
    for (int i=1; i<=n; ++i)
        for (int j=1; j<=n; ++j)
            if (i != j && (a[i] == a[j]*3 || a[i]*2 == a[j])) {
                adj[i].push_back(j); 
                deg_in[j]++;
            }
    for (int i=1; i<=n; ++i)
        if (!deg_in[i]) {
            q.push(i);
        }
    while (!q.empty()) {
        int u = q.front();
        q.pop();
        result.push_back(u);
        for (vector<int>::iterator i=adj[u].begin(); i!=adj[u].end(); ++i) {
            deg_in[*i]--;
            if (deg_in[*i] == 0)
                q.push(*i);
        }
    }
    for (vector<int>::iterator i=result.begin(); i!=result.end(); ++i) {
        cout << a[*i] << ' ';
    }
    return 0;
}
