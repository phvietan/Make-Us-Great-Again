#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    //freopen("input.txt","r",stdin);
    int n;
    cin>>n;

    vector<long long> inp;

    long long sum = 0;
    for(int i = 0; i < 2*n; i++)
    {
        long long x;
        cin>>x;
        inp.push_back(x);
        sum+=x;
    }

    sort(inp.begin(), inp.end());

    long long firstSum = 0;
    for(int i = 0; i<n; i++)
    {
        firstSum += inp[i];
    }

    if(firstSum * 2 == sum)
    {
        cout<<-1<<endl;
    } else{
        for(int i = 0; i<inp.size(); i++)
        {
            cout<<inp[i]<<" ";
        }
        cout<<endl;
    }
    return 0;
}