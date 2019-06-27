#include <algorithm>
#include <cstdio>
#include <iostream>
#include <map>
#include <vector>
#include <cstring>

using namespace std;

typedef pair <string, string> ss;
typedef pair <ss, ss> ssss;

#define fs first
#define sc second

const char * VOWELS = "ueoai";
const int N = 100005;

struct gt {
    string s;
    int len, id;

    gt(string _s = "", int _len = 0, int _id = -1): s(_s), len(_len), id(_id) {}
};

int n, c[N], b[N];
gt A[N];
vector <gt> F[N];
vector <ss> S;
vector <ss> P;
vector <ssss> result;

int getVowelIndex(char c) {
    for (int i = 0; i < strlen(VOWELS); ++i)
        if (VOWELS[i] == c) return i;
    return -1;
}

bool isVowel(char c) {
    int ind = getVowelIndex(c);
    return ind != -1;
}

string getVowels(string s) {
    string res = "";
    for (int i = 0; i < s.length(); ++i)
        if (isVowel(s[i])) res.push_back(s[i]);
    return res;
}

void nen() {
    sort(b, b+n);
    c[0] = 0;
    for (int i = 0; i < n; ++i)
        if (i == 0 || b[i] != b[i-1]) c[++c[0]] = b[i];
    for (int i = 0; i < n; ++i) {
        int index = lower_bound(c+1, c+c[0]+1, A[i].len) - c;
        A[i].len = index;
    }
}

int exist(gt v) {
    for (int i = 0; i < F[v.len].size(); ++i)
        if (F[v.len][i].id == v.id) return i;
    return -1;
}

int main() {
    freopen("input.txt", "r", stdin);
    cin >> n;
    for (int i = 0; i < n; ++i) {
        string s; cin >> s;
        string a = getVowels(s);
        int m = a.length();
        int id = getVowelIndex(a[m-1]);
        A[i] = gt(s, m, id);
        b[i] = m;
    }
    nen();
    for (int i = 0; i < n; ++i) {
        int k = exist(A[i]);
        if (k == -1) F[A[i].len].push_back(A[i]);
        else {
            S.push_back(ss(F[A[i].len][k].s, A[i].s));
            F[A[i].len].erase(F[A[i].len].begin() + k);
        }
    }
    for (int i = 1; i <= c[0]; ++i) {
        int len = i;
        int m = F[len].size();
        while (m >= 2) {
            P.push_back(ss(F[len][m-1].s, F[len][m-2].s));
            F[len].pop_back();
            F[len].pop_back();
            m -= 2;
        }
    }
    while (P.size() > 0 && S.size() > 0) {
        ss p = P[P.size() - 1];
        ss s = S[S.size() - 1];
        result.push_back(ssss(ss(p.fs, s.fs), ss(p.sc, s.sc)));
        P.pop_back();
        S.pop_back();
    }
    while (S.size() >= 2) {
        ss s1 = S[S.size() - 1];
        ss s2 = S[S.size() - 2];
        result.push_back(ssss(ss(s1.fs, s2.fs), ss(s1.sc, s2.sc)));
        S.pop_back();
        S.pop_back();
    }
    printf("%d\n", result.size());
    for (int i = 0; i < result.size(); ++i)
        cout << result[i].fs.fs << " " << result[i].fs.sc << "\n" << result[i].sc.fs << " " << result[i].sc.sc << "\n";
    return 0;
}

//int main() {
//    vector <int> a;
//    for (int i = 0; i < 5; ++i) a.push_back(i);
//    for (int i = 0; i < a.size(); ++i) cout << a[i] << " ";
//    cout << endl;
//    a.erase(a.begin() + 1);
//    for (int i = 0; i < a.size(); ++i) cout << a[i] << " ";
//    cout << endl;
//    return 0;
//}
