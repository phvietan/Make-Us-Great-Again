#include <iostream>

using namespace std;

template <class T>
int maximize (T &a, T b) { if (b > a) a = b; else return false; return true; }
template <class T>
int minimize (T &a, T b) { if (b < a) a = b; else return false; return true; }

int main() {
    ios_base::sync_with_stdio(false);

    return 0;
}
