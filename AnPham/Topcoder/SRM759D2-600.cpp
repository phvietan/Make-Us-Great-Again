#include <cstdio>
#include <iostream>
#include <algorithm>
#include <vector>
#include <cmath>

using namespace std;

class EllysThreePrimes {
private:
    vector <int> a, p;
    bool checkPrime[28*28*28*28*28];

    bool isPrime(int n) {
        int k = sqrt(n);
        for (int i = 2; i <= k; ++i)
            if (n % i == 0) return false;
        return true;
    }

    int vectorTo28(vector <int> & a) {
        int result = 0;
        for (int i = 4; i >= 0; --i)
            result = result * 28 + a[i];
        return result;
    }

    int convertTo28(int num) {
        vector <int> a;
        while (a.size() < 5) {
            a.push_back(num % 10);
            num /= 10;
        }
        return vectorTo28(a);
    }

    int convertToInt(int num) {
        vector <int> a;
        while (a.size() < 5) {
            a.push_back(num % 28);
            num /= 28;
        }
        int result = 0;
        for (int i = 4; i >= 0; --i)
            result = result * 10 + a[i];
        return result;
    }

    void init(vector <int> sums) {
        reverse(sums.begin(), sums.end());
        this->a = sums;
        this->p.clear();
        for (int i = 1e4; i < 1e5; ++i)
            if (isPrime(i)) {
                int val = convertTo28(i);
                this->p.push_back(val);
                this->checkPrime[val] = true;
            }
    }

public:
    vector <int> getPrimes(vector <int> sums) {
        this->init(sums);
        int num = this->vectorTo28(sums);
        vector <int> result;
        for (int i = 0; i < this->p.size(); ++i) {
            int val1 = this->p[i];
            if (num < val1) break;
            for (int j = 0; j < this->p.size(); ++j) {
                int val2 = this->p[j];
                if (val1 == val2) continue;
                if (num < val1 + val2) break;
                int val3 = num - val1 - val2;
                if (val3 == val1 || val3 == val2) continue;
                if (this->checkPrime[val3]) {
                    result.push_back(convertToInt(val1));
                    result.push_back(convertToInt(val2));
                    result.push_back(convertToInt(val3));
                    return result;
                }
            }
        }

        return result;
    }

} program;

//int main() {
//    freopen("input.txt", "r", stdin);
//    vector <int> a;
//    for (int i = 0; i < 5; ++i) {
//        int x; cin >> x;
//        a.push_back(x);
//    }
//    vector <int> res = program.getPrimes(a);
//    for (int i = 0; i < res.size(); ++i) cout << res[i] << " ";
//}
