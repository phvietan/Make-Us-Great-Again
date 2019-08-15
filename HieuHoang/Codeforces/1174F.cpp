#include <iostream>
#include <vector>

using namespace std;

const int M = 200000 + 5;
int n;
vector<int> edges[M];
int heavyPath[M];
bool visit[M];
int parent[M];
int height[M];

int buildHeavy(int v)
{
    if(visit[v])
    {
        return 0;
    }

    visit[v] = true;

    int weight = 1;
    int mx = 0, mrk = 0;
    for(int i = 0; i<edges[v].size(); i++)
    {
        if(parent[v] == edges[v][i])
        {
            continue;
        }
        int tmp = buildHeavy(edges[v][i]);

        parent[edges[v][i]] = v;

        weight += tmp;
        if(tmp > mx)
        {
            mx = tmp;
            mrk = edges[v][i];
        }
    }
    heavyPath[v] = mrk;

    return weight;
}

int queryDistance(int v)
{
    cout<<"d "<<v<<"\n";
    cout.flush();
    int ans;
    cin>>ans;
    return ans;
}

int querySecondNode(int v)
{
    cout<<"s "<<v<<"\n";
    cout.flush();
    int ans;
    cin>>ans;
    return ans;
}

void answer(int v)
{
    cout<<"! "<<v<<"\n";
    cout.flush();
}

int main()
{
    // freopen("input.txt","r",stdin);

    cin>>n;
    for(int i = 0; i<n-1; i++)
    {
        int x, y;
        cin>>x>>y;
        edges[x].push_back(y);
        edges[y].push_back(x);
    }

    // fclose(stdin);

    buildHeavy(1);

    int root = 1;
    int distToRoot = queryDistance(root);

    while(distToRoot)
    {
        int leaf = root;
        vector<int> path;
        path.push_back(leaf);
        while(heavyPath[leaf])
        {
            if(height[heavyPath[leaf]] == 0){
                height[heavyPath[leaf]] = 1 + height[leaf];
            }
            leaf = heavyPath[leaf];
            path.push_back(leaf);
        }

        int distToLeaf = queryDistance(leaf);

        int pathLen = path.size() - 1;

        int distToLca = (distToRoot + distToLeaf - pathLen) / 2;

        int rootToLca = (distToRoot - distToLeaf + pathLen) / 2;

        if(rootToLca < 0 || rootToLca > pathLen)
        {
            answer(rootToLca);
            return 0;
        }

        int lca = path[rootToLca];

        if(distToLca == 0)
        {
            root = lca;
            distToRoot = distToLca;
        }
        else
        {
            root = querySecondNode(lca);
            distToRoot = distToLca - 1;
        }
    }

    answer(root);

    return 0;
}