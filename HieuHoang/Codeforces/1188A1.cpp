#include <iostream>
#include <math.h>
#include <algorithm>
#include <vector>

using namespace std;

const int N = 100000 + 5;
int n;
vector<int> edges[N];

int main()
{
    //freopen("input.txt","r", stdin);
    cin>>n;

    for(int i = 1; i<n; i++)
    {
        int x, y;
        cin>>x>>y;
        edges[x].push_back(y);
        edges[y].push_back(x);
    }

    for(int i = 1; i<=n; i++)
    {
        if(edges[i].size() == 2)
        {
            cout<<"NO"<<endl;
            return 0;
        }
    }

    cout<<"YES"<<endl;

    return 0;
}