#include <cstdio>
#include <algorithm>
#include <iostream>
#include <cstring>
#include <vector>
#include <string>

using namespace std;

typedef long long ll;
typedef pair<int, int> ii;

#define fs first
#define sc second

class SelfDescFind {
private:
    vector <int> a, b, digits;
    int n;
    int cnt[10];
    bool isInDigits[10];
    string result = "999999999999999999999999999999";

    void init(vector <int> digits) {
        this->digits = digits;
        this->n = digits.size();
        this->a.resize(this->n);
        this->b.resize(this->n);

        memset(isInDigits, false, sizeof isInDigits);
        memset(cnt, 0, sizeof cnt);

        for (int i = 0; i < this->n; ++i) {
            this->b[i] = digits[i];
            this->cnt[digits[i]]++;
            isInDigits[digits[i]] = true;
        }
    }

    bool isValid() {
        for (int i = 0; i < this->n; ++i) {
            if (this->cnt[b[i]] != a[i]) return false;
        }
        return true;
    }

    string getMinValue() {
        vector <ii> cur;
        for (int i = 0; i < this->n; ++i)
            cur.push_back(ii(this->a[i], this->b[i]));
        sort(cur.begin(), cur.end());
        string result = "";
        for (int i = 0; i < this->n; ++i) {
            result.push_back(cur[i].fs + '0');
            result.push_back(cur[i].sc + '0');
        }
        return result;
    }

    bool isSmaller(string & a, string & b) {
        int n = a.length(), m = b.length();
        if (n != m) return n < m;
        for (int i = 0; i < n; ++i) {
            if (a[i] != b[i]) return a[i] < b[i];
        }
        return false;
    }

    void partition(int index, int mxInd, int sum, int mxSum) {
        if (index == mxInd-1) {
            if (mxSum - sum > 9 || mxSum <= sum || !this->isInDigits[mxSum - sum]) return;
            this->a[index] = mxSum - sum;
            this->cnt[mxSum - sum]++;
            if (this->isValid()) {
                string s = this->getMinValue();
                if (this->isSmaller(s, this->result)) this->result = s;
            }
            this->cnt[mxSum - sum]--;
            return;
        }
        for (int i = 0; i < this->n; ++i) {
            if (this->digits[i] == 0) continue;
            this->a[index] = this->digits[i];
            this->cnt[this->digits[i]]++;
            this->partition(index+1, mxInd, sum + this->digits[i], mxSum);
            this->cnt[this->digits[i]]--;
        }
    }

public:
    string construct(vector <int> digits) {
        this->init(digits);

        this->partition(0, this->n, 0, this->n*2);
        return (this->result == "999999999999999999999999999999") ? "" : this->result;
    }
} program;

//int main() {
//    freopen("input.txt", "r", stdin);
//    vector <int> a;
//    int n;
//    cin >> n;
//    for (int i = 0; i < n; ++i) {
//        int x; cin >> x;
//        a.push_back(x);
//    }
//    cout << program.construct(a) << endl;
//    return 0;
//}
