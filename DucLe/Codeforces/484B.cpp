#include <algorithm>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cstring>
#include <cmath>
#include <deque>
#include <vector>
#include <queue>
 
using namespace std;
const int N = 2e5+10, M = 2e6;
 
int a[N],n,h[M+5]={0};

int main(){
    ios_base::sync_with_stdio(false);
    cin >> n;
    
    for (int i=1; i<=n; ++i)
        cin >> a[i];

    sort(a+1, a+n+1);

    int tmp=n;n=0;
    for (int i=1; i<=tmp; ++i) {
        a[++n]=a[i];
        while (i<tmp && a[i+1] == a[n]) i++;
    }

    for (int i=1; i<=n; ++i)
        h[a[i]]++;
    for (int i=1; i<=M; ++i)
        h[i] = (h[i] > 0) ? i : h[i-1];

    int ans=0;
    for (int i=1; i<=n; ++i)
        for(int j=a[i]<<1; j<=M; j+=a[i])
            ans = max(ans, h[j-1] % a[i]);

    cout << ans << endl;
    return 0;
}
