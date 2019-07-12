#include <iostream>
#include <algorithm>
#include <map>

using namespace std;

int n;
long long p, k;

long long f(long long x)
{
    long long ans = x * x % p * x % p * x % p;
    ans -= x * k % p;
    return (p + ans) % p;
}

int main()
{
    //freopen("input.txt", "r", stdin);
    cin>>n>>p>>k;

    map<long long, long long> countFx;

    for(int i = 0; i<n; i++)
    {
        long long x;
        cin>>x;
        long long tmp = f(x);
        if(countFx.find(tmp)==countFx.end())
        {
            countFx[tmp]=0;
        }
        countFx[tmp]++;
    }

    long long ans = 0;
    for(map<long long, long long>::iterator it = countFx.begin(); it!=countFx.end(); it++)
    {
        ans += it->second * (it->second - 1) / 2;
    }
    cout<<ans<<endl;
    return 0;
}