#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cmath>
#include <string>
#include <cstring>
#include <map>
#include <set>
#include <vector>

using namespace std;

typedef long long ll;

const int MAXVAL = 30000;

int F[MAXVAL + 10];
bool P[MAXVAL + 10];

void erathos() {
    for (int i = 2; i <= MAXVAL; ++i) {
        if (P[i]) continue;
        for (ll j = (ll)i*i; j <= MAXVAL; j += i)
            P[j] = true;
    }
    P[1] = true;
    for (int i = 1; i <= MAXVAL; ++i) P[i] = !P[i];
}

string toString(int n) {
    string res = "";
    while (n) {
        res.push_back(n % 10 + '0');
        n /= 10;
    }
    reverse(res.begin(), res.end());
    return res;
}

bool checkZero(string cur) {
    for (int i = 0; i < (int)cur.length(); ++i)
        if (cur[i] == '0') return true;
    return false;
}

void initalization() {
    erathos();
    for (int i = 1; i <= MAXVAL; ++i) {
        F[i] = 0;
        if (!P[i]) continue;
        string cur = toString(i);
        bool check = checkZero(cur);
        if (check) continue;
        for (int j = 0; j < (int)cur.length(); ++j) {
            int val = 0;
            for (int k = 0; k < (int)cur.length(); ++k)
                if (j != k) val = val * 10 + cur[k] - '0';
            F[i] = max(F[i], F[val]);
        }
        F[i] += 1;
    }
}

int main() {
	//freopen("input.txt", "r", stdin);
	int numTest;
    scanf("%d",&numTest);
    initalization();

    for (int tt = 1; tt <= numTest; ++tt) {
        printf("Case #%d\n", tt);
        int numA, numB;
        scanf("%d %d", &numA, &numB);
        if (F[numA] > F[numB]) printf("1\n");
        else if (F[numA] < F[numB]) printf("2\n");
        else printf("3\n");
    }
	return 0;
}
