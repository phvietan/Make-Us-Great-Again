#include <iostream>
#include <vector>

using namespace std;
int w, m;

string solve(int m) {
    vector<int> a;
    while (m) {
        a.push_back(m % w);
        m /= w;
    }
    for (int i=0; i<a.size(); ++i) {
        if (a[i] == w) {
            a[i] = 0;
            if (i+1 == a.size()) 
                a.push_back(1);
            else a[i+1]++;
        }
        if (a[i] == 0 || a[i] == 1) continue;
        else if (a[i] == w-1) {
            if (i+1 == a.size()) 
                a.push_back(1);
            else a[i+1]++;
        }
        else return "NO";
    }
    return "YES";
}

int main() {
    cin >> w >> m;
    cout << solve(m) << endl;
    return 0;
}
