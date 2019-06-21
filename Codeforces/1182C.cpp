#include <iostream>
#include <cstdio>
#include <algorithm>
#include <set>
#include <string>

using namespace std;

struct vt {
  string value;
  int num;
  char last;

  vt(string _value = "", int _num = 0, char _last = '.'): value(_value), num(_num), last(_last) {}
};

const int N = 100005;

int n;
vt A[N];

bool isVowel(char c) {
  return c == 'u' || c == 'e' || c == 'o' || c == 'a' || c == 'i';
}

string getVowels(string s) {
  string result = "";
  for (int i = 0; i < s.length(); ++i)
    if (isVowel(s[i])) result.push_back(s[i]);
  return result;
}

int main() {
  freopen("input.txt", "r", stdin);
  cin >> n; cin.ignore();
  for (int i = 0; i < n; ++i) {
    string s;
    getline(cin, s);
    string vowels = getVowels(s);
    int m = vowels.length();
    A[i] = vt(s, m, vowels[m-1]);
  }

  return 0;
}
