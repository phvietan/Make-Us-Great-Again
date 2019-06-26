#include <bits/stdc++.h>

using namespace std;

vector<long long> primes;
bool isNotPrime[1000000];

void sieveOfPrimes(){
    //sieve of Eratosthenes
    primes.push_back(2);
    for(long long i = 3 ; i < 1000000; i+=2){
        if(!isNotPrime[i]){
            primes.push_back(i);
            for(long long j = i; j*i<1000000; j+=2){
                isNotPrime[i*j] = true;
            }
        }
    }
}

bool checkSet(int sz, int mx){
    long long prod = primes[mx];
    for(int i = 0; i < sz-1; i++){
        prod *= primes[i];
    }
    return prod <= 1000000;
}

int findMx(int sz){
    long long prod = 1;
    for(int i = 0; i<sz; i++){
        prod *= primes[i];
    }

    if(prod > 1000000){
        return -1;
    }

    int tmp = sz-1;
    while(prod <= 1000000 && tmp < primes.size() - 1){
        prod /= primes[tmp];
        prod *= primes[++tmp];
    }

    if(prod > 1000000){
        tmp--;
    }

    return tmp;
}

long long cube(long long a){
    return a * a * a;
}

long long solve(int sz, int mx, long long inp){
    if(sz == 0){
        return inp;
    }

    if(inp <= 1){
        return 0;
    }
    if(mx == sz - 1){
        long long tmp = 1;
        for(int i = 0; i<sz; i++){
            tmp *= primes[i];
        }
        return inp / cube(tmp);
    }

    long long ans = 0;

    for(int i = mx; i>=sz-1; i--){
        long long tmp = inp / cube(primes[i]);
        ans += solve(sz - 1, i - 1, tmp);
    }
    return ans;
}

int main()
{
    sieveOfPrimes();

    int testcase;
    cin>>testcase;

    long long inp;

    for(int i = 0; i < testcase; i++){
        cin>>inp;

        long long ans = 0;

        int sz = 1;
        int mx;
        int sign = 1;

        while((mx = findMx(sz)) > 0){
            ans += solve(sz, mx, inp)*sign;
            sign*=-1;
            sz++;
        }

        cout<<ans<<endl;
    }
    return 0;
}
