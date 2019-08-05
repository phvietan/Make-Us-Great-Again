/**
 * https://www.hackerrank.com/challenges/pmix/problem
 *
 * Difficulty   : khó
 * Problem tags : string, bit
 */

#include <bits/stdc++.h>

using namespace std;

vector<string> split_string(string);

#define FOR(i, l, r) for (int i = l; i <= r; i++)

const int N = 1e6 + 6;

int a[2][N];

/*
 * Complete the pmix function below.
 */
string pmix(string s, int k) {
    int n = s.size();
    FOR(i, 0, n - 1) a[0][i] = s[i] - 'A';
    int t = 0;
    for (int x = 1; x <= k; x <<= 1) {
        if (x & k) {
            t ^= 1;
            for (int i = 0, j = (i + x) % n; i < n; ++i) {
                a[t][i] = a[t ^ 1][i] ^ a[t ^ 1][j];
                j++;
                if (j == n) {
                    j = 0;
                }
            }
        }
    }
    string res = "";
    for (int i = 0; i < n; ++i) {
        res += char('A' + a[t][i]);
    }
    return res;
}

int main() {
    ofstream fout(getenv("OUTPUT_PATH"));

    string nk_temp;
    getline(cin, nk_temp);

    vector<string> nk = split_string(nk_temp);

    int n = stoi(nk[0]);

    int k = stoi(nk[1]);

    string s;
    getline(cin, s);

    string result = pmix(s, k);

    fout << result << "\n";

    fout.close();

    return 0;
}

vector<string> split_string(string input_string) {
    string::iterator new_end = unique(
        input_string.begin(), input_string.end(),
        [](const char &x, const char &y) { return x == y and x == ' '; });

    input_string.erase(new_end, input_string.end());

    while (input_string[input_string.length() - 1] == ' ') {
        input_string.pop_back();
    }

    vector<string> splits;
    char delimiter = ' ';

    size_t i = 0;
    size_t pos = input_string.find(delimiter);

    while (pos != string::npos) {
        splits.push_back(input_string.substr(i, pos - i));

        i = pos + 1;
        pos = input_string.find(delimiter, i);
    }

    splits.push_back(
        input_string.substr(i, min(pos, input_string.length()) - i + 1));

    return splits;
}
