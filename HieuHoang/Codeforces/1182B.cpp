#include <bits/stdc++.h>

using namespace std;

const int H = 505, W = 505;

char inp[H][W];
int h, w;
int direction[4][2]={{0,1},{0,-1},{1,0},{-1,0}};

int main()
{
    //freopen("input.txt", "r", stdin);
    cin>>h>>w;

    for(int i = 1; i <= h; i++){
    for(int j = 1; j <= w; j++){
        cin>>inp[i][j];
    }
    }

    int mrki = 0, mrkj = 0;
    for(int i = 2; i < h; i++){
    for(int j = 2; j < w; j++){
        if(inp[i][j] == '*'){
            int k = 0;
            while(k<4 && inp[i+direction[k][0]][j+direction[k][1]] == '*'){
                k++;
            }
            if(k==4){
                mrki = i;
                mrkj = j;
            }
        }
    }
    }

    if(mrki * mrkj ==0){
        cout<<"NO"<<endl;
        return 0;
    }

    for(int i = mrki+1; i <= h; i++){
        if(inp[i][mrkj]=='.'){
            break;
        } else{
            inp[i][mrkj]='.';
        }
    }
    for(int i = mrki-1; i >= 0; i--){
        if(inp[i][mrkj]=='.'){
            break;
        } else{
            inp[i][mrkj]='.';
        }
    }
    for(int j = mrkj-1; j >= 0; j--){
        if(inp[mrki][j]=='.'){
            break;
        } else{
            inp[mrki][j]='.';
        }
    }
    for(int j = mrkj+1; j <= w; j++){
        if(inp[mrki][j]=='.'){
            break;
        } else{
            inp[mrki][j]='.';
        }
    }
    inp[mrki][mrkj]='.';

    for(int i = 1; i<=h; i++){
    for(int j = 1; j<=w; j++){
        if(inp[i][j]=='*'){
            cout<<"NO"<<endl;
            return 0;
        }
    }
    }

    cout<<"YES"<<endl;
    return 0;
}
