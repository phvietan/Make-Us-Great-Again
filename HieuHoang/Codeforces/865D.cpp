#include <bits/stdc++.h>

using namespace std;

const int N = 3*100000 + 5;
int n;
long long inp[N];

class Heap{
public:
    long long heap[N];
    int sz = 0;

    Heap(){}

    int parent(int i){
        return max((i-1)/2, 0);
    }

    int leftChild(int i){
        return i*2 + 1;
    }

    int rightChild(int i){
        return i*2 + 2;
    }

    bool isLeaf(int i){
        return i >= sz/2 && i<sz;
    }

    void _swap(int a, int b){
        heap[a] ^= heap[b];
        heap[b] ^= heap[a];
        heap[a] ^= heap[b];
    }

    void _insert(long long input){
        heap[sz] = input;
        sz++;

        int current = sz - 1;
        while(heap[current] < heap[parent(current)]){
            _swap(current, parent(current));
            current = parent(current);
        }
    }

    void heapify(int i){
        if(isLeaf(i)){
            return;
        }

        if(heap[i] > heap[leftChild(i)] || (rightChild(i) < sz && heap[i] > heap[rightChild(i)])){
            if(rightChild(i) >= sz || heap[rightChild(i)] > heap[leftChild(i)]){
                _swap(i, leftChild(i));
                heapify(leftChild(i));
            } else{
                _swap(i, rightChild(i));
                heapify(rightChild(i));
            }
        }
    }

    long long extract(){
        if(sz == 0){
            return -1;
        }

        long long ans = heap[0];
        heap[0] = heap[--sz];
        if(sz > 0){
            heapify(0);
        }

        return ans;
    }
};

int main()
{
    cin>>n;
    for(int i = 0; i<n; i++){
        cin>>inp[i];
    }

    Heap* minHeap = new Heap();
    long long ans = 0;
    for(int i = 0; i<n; i++){
        if(minHeap->sz != 0 && inp[i] > minHeap->heap[0]){
            long long tmp = minHeap->extract();
            ans += inp[i] - tmp;
            minHeap->_insert(inp[i]);
        }

        minHeap->_insert(inp[i]);
    }

    cout<<ans<<endl;
    return 0;
}
