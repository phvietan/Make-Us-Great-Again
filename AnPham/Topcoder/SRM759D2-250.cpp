#include <algorithm>
#include <iostream>
#include <cstdio>
#include <vector>

using namespace std;

class EllysViewPoints {
public:
    const int mov[4][2] = {{-1, 0}, {0, 1}, {0, -1}, {1, 0}};
    vector <string> matrix;
    int n, m;

    bool inside(int x, int y) { return x >= 0 && x < n && y >= 0 && y < m; }

    void next(int & x, int & y, int dir) {
        x += mov[dir][0];
        y += mov[dir][1];
    }

    bool checkDir(int x, int y, int dir) {
        while (this->inside(x, y)) {
            if (this->matrix[x][y] == '#') return false;
            this->next(x, y, dir);
        }
        return true;
    }

    bool check(int x, int y) {
        bool result = true;
        for (int dir = 0; dir < 4; ++dir) result &= this->checkDir(x, y, dir);
        return result;
    }

    int getCount(int n, int m, vector <string> matrix) {
        this->n = n;
        this->m = m;
        this->matrix = matrix;

        int result = 0;
        for (int i = 0; i < n; ++i)
        for (int j = 0; j < m; ++j)
            result += this->check(i, j);
        return result;
    }
} program;

//int main() {
//    freopen("input.txt", "r", stdin);
//    int n, m; cin >> n >> m; cin.ignore();
//    vector <string> a;
//    for (int i = 0; i < n; ++i) {
//        string s; getline(cin, s);
//        a.push_back(s);
//    }
//    int res = program.getCount(n, m, a);
//    cout << res << endl;
//}
