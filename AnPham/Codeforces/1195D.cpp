#include <cstdio>
#include <algorithm>
#include <cstring>
#include <iostream>

using namespace std;

const int N = 100005;
const int inf = 1000000000;
const int MOD = 998244353;

typedef long long ll;

int n, a[N], cnt[15];
ll mu[50];

int getLength(int x) {
  int res = 0;
  for (; x > 0; x /= 10) res++;
  return res;
}

string toString(int val) {
  string s = "";
  while (val > 0) {
    s += (val % 10) + '0';
    val /= 10;
  }
  reverse(s.begin(), s.end());
  return s;
}

ll demSau(int a, int l) {
  string s = toString(a);
  s = s.substr(max(0, (int)s.length() - l), l);
  ll res = 0;
  for (int i = 0; i < s.length(); ++i) {
    res = (res*10 % MOD + s[i] - '0') % MOD;
    res = (res*10 % MOD + s[i] - '0') % MOD;
  }
  return res;
}

ll demTrc(int a, int l) {
  string s = toString(a);
  s = s.substr(0, s.length() - l);
  a = 0;
  for (int i = 0; i < s.length(); ++i)
    a = a * 10 + s[i] - '0';
  return (ll)a * mu[2*l] % MOD;
}

int main() {
  freopen("input.txt", "r", stdin);
  scanf("%d",&n);
  for (int i = 1; i <= n; ++i) {
    scanf("%d",&a[i]);
    int m = getLength(a[i]);
    cnt[m]++;
  }
  sort(a+1, a+n+1);
  mu[0] = 1;
  for (int i = 1; i <= 30; ++i)
    mu[i] = mu[i-1] * 10 % MOD;
  ll res = 0;
  for (int i = 1; i <= n; ++i) {
    int m = getLength(a[i]);
    for (int l = 1; l <= 11; ++l) {
      res = (res + demSau(a[i],l)*cnt[l] % MOD) % MOD;
    }
    for (int l = 1; l < m; ++l) {
      res = (res + demTrc(a[i],l)*cnt[l]%MOD * 2 % MOD) % MOD;
    }
  }
  cout << res << endl;
  return 0;
}