#include <vector>
#include <iostream>
#include <math.h>
#include <cmath>
#include <algorithm>

using namespace std;

long long a, b, p, q;
vector< pair<long long, long long> > vec;

long long f(long long x){
    long long q2 = 2 * q;
    return 2 * p % q2 * x %q2;
}

long long binSearch(long long middle){
    int l = 0, r = vec.size();
    while(r - l > 1){
        int mid = (r + l) /2;
        if(vec[mid].first > middle){
            r = mid;
        } else{
            l = mid;
        }
    }
    return (r+l)/2;
}

int main()
{
    
    int n;
    cin>>n;
    while(n--){
        cin>>a>>b>>p>>q;
        long long interval = sqrt(b - a + 1);

        vector< pair<long long, long long> > tmpVec;
        for(long long i = a; i < a + interval; i++){
            tmpVec.push_back(make_pair(f(i), i));
        }
        sort(tmpVec.begin(), tmpVec.end());

        vec.clear();
        vec.push_back(tmpVec[0]);
        for(long long i = 1; i<tmpVec.size(); i++){
            if(tmpVec[i].first != tmpVec[i-1].first){
                vec.push_back(tmpVec[i]);
            }
        }

        long long i;
        long long minDist = 3*q;
        long long mrk = vec[0].second;
        for(i=0; (i+1)*interval <= b-a+1; i++){
            long long middle = (3*q - f(i * interval)) % (2*q);
            
            long long pos = binSearch(middle);
            for(long long j = -1; j<2; j++){
                long long tmp = (vec.size() + pos + j)%vec.size();
                long long distToMiddle = abs(vec[tmp].first - middle);
                distToMiddle = min(distToMiddle, 2*q - distToMiddle);

                long long val = vec[tmp].second + i*interval;
                if(minDist > distToMiddle || (minDist == distToMiddle && mrk > val)){
                    mrk = val;
                    minDist = distToMiddle;
                }
            }
        }
        
        for(long long j = 0; j + a + i * interval <= b; j++){
            long long tmp = j + a + i * interval;
            long long distToMiddle = abs(q - f(tmp));
            distToMiddle = min(distToMiddle, 2*q - distToMiddle);
            if(distToMiddle < minDist){
                minDist = distToMiddle;
                mrk = tmp;
            }
        }
        cout<<mrk<<endl;
    }
    return 0;
}