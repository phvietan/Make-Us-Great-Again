#include <cstdio>
#include <iostream>
#include <cmath>
#include <algorithm>
#include <string>
#include <cstring>

using namespace std;

int n;
string s;

bool isValid(string & a) {
    return a[0] == '0';
}

bool isSmaller(string & a, string & b) {
    if (a.length() != b.length()) return a.length() < b.length();
    for (int i = 0; i < a.length(); ++i)
        if (a[i] != b[i]) return a[i] < b[i];
    return false;
}

string add(string a, string b) {
    int num = abs((int)a.length() - (int)b.length());
    string temp = "";
    for (int i = 0; i < num; ++i)
        temp.push_back('0');
    if (a.length() < b.length()) a = temp + a;
    if (b.length() < a.length()) b = temp + b;

    string result = "";
    int nho = 0;
    for (int i = (int)a.length() - 1; i >= 0; --i) {
        int now = a[i] + b[i] - '0'*2 + nho;
        nho = now >= 10;
        now %= 10;
        result.push_back(now + '0');
    }
    reverse(result.begin(), result.end());
    return result;
}

bool inside(int cur) {
    return cur >= 0 && cur < n;
}

string truoc(int cur) {
    string res = "";
    for (int i = 0; i < cur; ++i)
        res.push_back(s[i]);
    return res;
}

string sau(int cur) {
    string res = "";
    for (int i = cur; i < n; ++i)
        res.push_back(s[i]);
    return res;
}

string get(int cur, int dir) {
    while (inside(cur) && s[cur] == '0') cur += dir;
    if (!inside(cur)) return "-";
    return add(truoc(cur), sau(cur));
}

string getResult(string & a, string & b) {
    if (a == "-") return b;
    if (b == "-") return a;
    if (isSmaller(a, b)) return a;
    return b;
}

string getMax(int cur) {
    if (s[cur] == '0') {
        string a = get(cur-1, -1);
        string b = get(cur+1, 1);
        return getResult(a, b);
    }
    return add(truoc(cur), sau(cur));
}

int main() {
    freopen("input.txt", "r", stdin);
    cin >> n; cin.ignore();
    cin >> s;

    string result = getMax(s.length() / 2);
    if (s.length() % 2 == 1) {
        string another = getMax(s.length() / 2 + 1);
        cout << getResult(result, another) << endl;
    }
    else cout << result << endl;

    return 0;
}
