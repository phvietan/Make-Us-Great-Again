#include <iostream>

using namespace std;
int frequency[700] = {0};

int main() {
    int n; 
    string s;
    cin >> n >> s;
    for (int i=0; i<n-1; ++i) {
        frequency[(s[i]-'A')*26 + s[i+1]-'A']++;
    }
    int position = 0;
    for (int i=0;i<26*26; ++i) {
        if (frequency[i] > frequency[position]) 
            position = i;
    }
    cout << (char)(position/26 + 'A') <<  (char)(position%26 + 'A') << endl;
    return 0;
}
