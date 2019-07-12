#include <iostream>
#include <algorithm>
#include <vector>
#include <math.h>
#include <cstring>
#include <string.h>

using namespace std;

const int N = 100000 + 5;
int n;
vector<int> edges[N];
int f1 = 1, f2 = 1;
int visit1[N];
int visit2[N];
vector <int> path;
int visit[N];

int findF1(){
    int queue[N];
    int l = 0, r = 1;
    queue[0] = 1;
    visit1[1] = 1;
    while(r-l){
        int curr = queue[l];
        l++;

        for(size_t i = 0; i < edges[curr].size(); i++){
            if(visit1[edges[curr][i]] == 0){
                queue[r] = edges[curr][i];
                r++;
                visit1[edges[curr][i]] = 1;
            }
        }
    }
    return queue[l-1];
}

int findF2(){
    int queue[N];
    int l = 0, r = 1;
    queue[0] = f1;
    visit2[f1] = 1;
    int parent[N];
    while(r-l){
        int curr = queue[l];
        l++;

        for(size_t i = 0; i < edges[curr].size(); i++){
            if(visit2[edges[curr][i]] == 0){
                queue[r] = edges[curr][i];
                r++;
                visit2[edges[curr][i]] = 1;
                parent[edges[curr][i]] = curr;
            }
        }
    }
    int tmp = queue[l-1];
    while (tmp != f1)
    {
        path.push_back(tmp);
        tmp = parent[tmp];
    }
    path.push_back(tmp);
    return queue[l-1];
}

bool check(int s){
    int queue[N];
    int l = 0, r = 1;
    queue[0] = s;
    memset(visit, 0, sizeof(visit));
    visit[s] = 1;
    int deg[N];
    memset(deg, -1, sizeof(deg));
    while(r - l){
        int curr = queue[l];
        l++;
        for(size_t i = 0; i<edges[curr].size(); i++){
            int tmp = edges[curr][i];
            if(!visit[tmp]){
                queue[r] = tmp;
                r++;

                visit[tmp] = visit[curr] + 1;
                if(deg[visit[tmp]] == -1){
                    deg[visit[tmp]] = edges[tmp].size();
                } else{
                    if(deg[visit[tmp]] != edges[tmp].size()){
                        return false;
                    }
                }
            }
        }
    }
    return true;
}

int findNearestLeaf(int s){
    int queue[N];
    int l = 0, r = 1;
    queue[0] = s;
    memset(visit, 0, sizeof(visit));
    visit[s] = 1;
    while(r - l){
        int curr = queue[l];
        l++;
        
        for(size_t i = 0; i<edges[curr].size(); i++){
            int tmp = edges[curr][i];
            if(!visit[tmp]){
                if(edges[tmp].size() == 2){
                    queue[r] = tmp;
                    r++;
                }

                visit[tmp] = visit[curr] + 1;
                if(edges[tmp].size()==1){
                    return tmp;
                }
            }
        }
    }
    return s;
}

int main()
{
    //freopen("input.txt", "r", stdin);
    cin>>n;
    
    for(int i = 1; i<n; i++){
        int x, y; 
        cin>>x>>y;
        edges[x].push_back(y);
        edges[y].push_back(x);
    }

    f1 = findF1();
    f2 = findF2();
    if (check(f1))
    {
        cout<<f1<<endl;
    } else if (check(f2)){
        cout<<f2<<endl;
    } else if(path.size()%2 == 0){
        cout<<-1<<endl;
    } else {
        int mid = path[path.size() / 2];
        int lf = findNearestLeaf(mid);
        if(check(mid)){
            cout<<mid<<endl;
        } else if(check(lf)){
            cout<<lf<<endl;
        }else{
            cout<<-1<<endl;
        }
    }

    return 0;
}