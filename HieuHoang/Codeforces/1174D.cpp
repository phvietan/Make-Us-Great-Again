#include <iostream>
#include <vector>

using namespace std;

int n, x;

bool notValid[1000000+5];

int main()
{
    // freopen("input.txt", "r", stdin);

    cin>>n>>x;

    int tmp = 0;
    vector<int> ans;
    notValid[0] = notValid[x] = true;
    for(int i = 1; i<(1<<n); i++){
        if(!notValid[i]){
            ans.push_back(i^tmp);
            notValid[i] = true;
            notValid[i^x] = true;
            tmp = i;
        }
    }

    cout<<ans.size()<<endl;
    for(int i = 0; i<ans.size(); i++){
        cout<<ans[i]<<" ";
    }
    cout<<endl;

    return 0;
}