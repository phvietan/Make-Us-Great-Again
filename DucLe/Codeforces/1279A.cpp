#include <string>
#include <iostream>

using namespace std;
int a, b, c;

int min(int a, int b, int c) {
    return min(min(a, b), c);
}

int max(int a, int b, int c) {
    return max(max(a, b), c);
}

string solve() {
    cin >> a >> b >> c;
    return ((a + b + c - max(a, b, c) + 1 < max(a, b, c)) ? "No\n" : "Yes\n");
}

int main() {
    int test;
    cin >> test;
    for (; test; --test) 
        cout << solve();
    return 0;
}
