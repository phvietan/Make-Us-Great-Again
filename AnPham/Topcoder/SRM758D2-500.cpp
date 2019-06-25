#include <cstdio>
#include <algorithm>
#include <iostream>
#include <vector>
#include <cstring>
#include <cmath>

using namespace std;

class WildSequence {
private:

public:
    vector <int> construct(int head, vector <int> rest) {
        sort(rest.begin(), rest.end());
        int L = 0, R = rest.size()-1;
        vector <int> result;
        result.push_back(head);
        int cnt = 0;
        while (cnt < rest.size()) {
            ++cnt;
            if (head < rest[R]) {
                result.push_back(rest[R]);
                head = rest[R];
                R--;
            }
            else {
                result.push_back(rest[L]);
                head = rest[L];
                L++;
            }
        }
        return result;
    }
} program;
//
//int main() {
//    freopen("input.txt", "r", stdin);
//    int n, val;
//    cin >> n >> val;
//    vector <int> a;
//    for (int i = 0; i < n; ++i) {
//        int x; cin >> x;
//        a.push_back(x);
//    }
//    vector <int> b = program.construct(val, a);
//    for (int i = 0; i < b.size(); ++i)
//        cout << b[i] << " ";
//    return 0;
//}
