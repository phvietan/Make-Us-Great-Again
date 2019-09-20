#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;
const int N = 200005;
int n, a[N], b[N], position[N], f[N], maxF[N] = {0};
int fromBtoA[N];
int trace[N], positionOfMax[N];

bool maximize(int &a, int b) {
    if (b > a) a = b;
    else return false;
    return true;
}

int compare(int i, int j) {
    return a[i] < a[j];
}

int main() {
    ios_base::sync_with_stdio(false);
    cin >> n;
    for (int i=1; i<=n; ++i) {
        cin >> a[i];
        position[i] = i;
    }
    sort(position + 1, position + 1 + n, compare);
    for (int i=1, original_value=a[position[1]]-1, new_value=0; i<=n; ++i) {
        if (a[position[i]] != original_value) {
            original_value = a[position[i]];
            new_value++;
        }
        b[position[i]] = new_value;
        fromBtoA[new_value] = original_value;
    }
    fromBtoA[0] = 0;
    maxF[0] = 0;
    int result = 0, positionOfResult;
    for (int i=1; i<=n; ++i) {
        f[i] = 1;
        if (fromBtoA[b[i]-1] == a[i]-1)  {
            f[i] = maxF[b[i]-1] + 1;
            trace[i] = positionOfMax[b[i]-1];
        }
        if (maximize(maxF[b[i]], f[i])) {
            positionOfMax[b[i]] = i;

        }
        if (maximize(result, f[i])) {
            positionOfResult = i;
        }
    }
    cout << result << endl;

    vector<int> vectorRes;
    for (int i=0; i<result; ++i) {
        vectorRes.push_back(positionOfResult);
        positionOfResult = trace[positionOfResult];
    }
    for (vector<int>::reverse_iterator i=vectorRes.rbegin(); i!=vectorRes.rend(); ++i)
        cout << *i << ' ';
    return 0;
}
