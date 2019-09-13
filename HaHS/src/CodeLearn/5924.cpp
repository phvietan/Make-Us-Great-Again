#include <bits/stdc++.h>

using namespace std;

// #define debug 1

#define dis(a, b) ((b - a + 26) % 26)
#define prev(a) ((a - 1 + 26) % 26)

int funStringTransformation(std::string a, std::string b) {
    int ma[26], mb[26];
    for (int i = 0; i < 26; i++) ma[i] = mb[i] = 0;
    for (char c : a) ma[c - 'A']++;
    for (char c : b) mb[c - 'A']++;
    int res = 0;
    for (int i = 0; i < 26; i++) {
        if (mb[i] == 0)
            continue;
        if (ma[i] >= mb[i]) {
            ma[i] -= mb[i];
            mb[i] = 0;
            continue;
        }
        mb[i] -= ma[i];
        ma[i] = 0;
        for (int j = prev(i); mb[i] > 0 && j != i; j = prev(j)) {
            if (ma[j] > 0) {
                int uses = min(mb[i], ma[j]);
                ma[j] -= uses;
                mb[i] -= uses;
                res += uses * dis(j, i);
            }
        }
    }
    return res;
}

#ifdef debug
int main() {

    cout << funStringTransformation("CODE", "LUCK") << endl;

    return 0;
}
#endif