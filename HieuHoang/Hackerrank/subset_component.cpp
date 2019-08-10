/** https://www.hackerrank.com/challenges/subset-component/problem */

#include <vector>
#include <iostream>

using namespace std;

int n;
vector<long long> input;

int main()
{
    // freopen("input.txt","r",stdin);

    long long ans = 64;

    cin>>n;
    for(int i = 0; i<n; i++){
        long long x;
        cin>>x;
        input.push_back(x);
    }

    vector<long long> subset[(1<<n)];
    for(int i = 0; i<n; i++){
        int ind = 1 << i;
        subset[ind].push_back(input[i]);
    }

    for(int i = 1; i<(1<<n); i++){
        int q = (i-1) & i;
        int r = i - q;
        
        long long tmp = subset[r][0];
        subset[i].clear();
        for(int j = 0; j<subset[q].size(); j++){
            if(subset[q][j] & tmp){
                tmp |= subset[q][j];
            }else{
                subset[i].push_back(subset[q][j]);
            }
        }
        subset[i].push_back(tmp);

        int re = 0;
        for(int j = 0; j<subset[i].size(); j++){
            long long comp = subset[i][j];
            while(comp!=0){
                comp = comp&(comp-1);
                re++;
            }
            re--;
        }
        ans+=64-re;
    }
    cout<<ans<<endl;
    return 0;
}