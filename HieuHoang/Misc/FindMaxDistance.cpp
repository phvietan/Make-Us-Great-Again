/**
 * Problem: Given an array of n positive integers, find two distinct elements a and b (a < b) such that there is not any element greater than a and less than b, and the difference between a and b is maximum. Output that difference
 * For example:
 *  n = 5
 *  The array is [12, 1, 4, 8, 5]
 *  then the output will be 4
 * Constraints:
 *  1 < n <= 10^7
 *  Each element is less than 10^18
 */

#include <iostream>

using namespace std;

int n;
long long inp[1000000+5];
long long segments[1000000+5][2];

long long interval;

long long minInp = 1000000000000000000;
long long maxInp = -1;

int main()
{
    //freopen("input.txt","r",stdin);

    cin>>n;
    for(int i = 0; i<n; i++){
        cin>>inp[i];
        if(inp[i] < minInp){
            minInp = inp[i];
        }
        if(inp[i] > maxInp){
            maxInp = inp[i];
        }
    }

    for(int i = 0; i<=n; i++){
        segments[i][0] = segments[i][1] = -1;
    }
    segments[n][0] = segments[n][1] = -1;

    interval = (maxInp - minInp) / (n - 1);
    
    for(int i = 0; i<n; i++){
        long long tmp = (inp[i] - minInp) / interval;

        if(segments[tmp][0] == -1){
            segments[tmp][0] = segments[tmp][1] = inp[i];
        } else{
            if(segments[tmp][0] > inp[i]){
                segments[tmp][0] = inp[i];
            }
            if(segments[tmp][1] < inp[i]){
                segments[tmp][1] = inp[i];
            }
        }
    }

    long long ans = segments[0][1] - segments[0][0];
    long long tmp = segments[0][1];
    for(int i = 1; i <= n; i++){
        if(segments[i][0]!=-1){
            if(segments[i][0] - tmp > ans){
                ans = segments[i][0] - tmp;
            }
            tmp = segments[i][0];
            if(segments[i][1] - tmp > ans){
                ans = segments[i][1] - tmp;
            }
            tmp = segments[i][1];
        }
    }

    cout << ans << endl;

    return 0;
}