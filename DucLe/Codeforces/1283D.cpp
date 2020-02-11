#include <iostream>
#include <queue>
#include <set>
#include <map>

using namespace std;
const int N = 200010;
int n, m, x[N];
/* set<int> s; */
/* queue<pair<int, int> > q; */
queue<int> q;
vector<int> result;
map<int, int> Map;

int main() {
    cin >> n >> m;
    for (int i=1; i<=n; ++i) {
        cin >> x[i];
        Map[x[i]] = 0;
        /* q.push(make_pair(x[i], 0)); */
        q.push(x[i]);
    }
    long long total_distance = 0;
    while (!q.empty()) {
        /* int origin = q.front().first, delta = q.front().second; */
        int point = q.front();
        q.pop();
        if (Map[point] != 0) {
            result.push_back(point);
            total_distance += abs(Map[point]); 
            m--;
            if (m == 0) break;
        } 
        if (Map.find(point - 1) == Map.end()) {
            Map[point - 1] = Map[point] - 1;
            q.push(point - 1);
        }
        if (Map.find(point + 1) == Map.end()) {
            Map[point + 1] = Map[point] + 1;
            q.push(point + 1);
        }
        /* if (s.find(origin + delta) == s.end()) { */
        /*     total_distance += abs(delta); */
        /*     result.push_back(origin + delta); */
        /*     m--; */
        /*     if (m == 0) break; */
        /* } */
        /*     s.insert(origin + delta); */
        /*     if (delta == 0) { */
        /*         q.push(make_pair(origin, delta - 1)); */
        /*         q.push(make_pair(origin, delta + 1)); */
        /*     } */
        /*     else if (delta < 0) { */
        /*         q.push(make_pair(origin, delta - 1)); */
        /*     } else { */
        /*         q.push(make_pair(origin, delta + 1)); */
        /*     } */
    }
    cout << total_distance << '\n';
    for (auto i : result) {
        cout << i << ' ';
    }
    return 0;
}
