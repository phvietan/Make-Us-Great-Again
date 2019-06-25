#include <cstdio>
#include <algorithm>
#include <iostream>
#include <cstring>
#include <vector>

using namespace std;

class LongJump2 {
private:
    vector <int> a;
    int n;

    void init(int N, vector <int> jumpLengths) {
        this->n = N;
        this->a = jumpLengths;
    }

public:
    int countNewLeaders(int N, vector <int> jumpLengths) {
        this->init(N, jumpLengths);
        int maxSoFar = -1, curLead = -1, res = 0;
        for (int i = 0; i < 3*N; ++i) {
            int id = i % N;
            if (curLead != id && this->a[i] > maxSoFar) {
                ++res;
                curLead = id;
            }
            maxSoFar = max(maxSoFar, this->a[i]);
        }
        return res;
    }
} program;

//int main() {
//    freopen("input.txt", "r", stdin);
//    int n;
//    cin >> n;
//    vector <int> a;
//    for (int i = 0; i < 3*n; ++i) {
//        int x; cin >> x;
//        a.push_back(x);
//    }
//    cout << program.countNewLeaders(n, a) << endl;
//    return 0;
//}
