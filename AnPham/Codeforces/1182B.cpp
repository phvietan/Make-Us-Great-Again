#include <cstdio>
#include <iostream>

using namespace std;

char a[505][505];
int tren[505][505], duoi[505][505], trai[505][505], phai[505][505];
int n, m;

int dem() {
    int result = 0;
    for (int i = 0; i < n; ++i)
    for (int j = 0; j < m; ++j)
        result += (a[i][j] == '*');
    return result;
}

bool inside(int i, int j) {
    return (i >= 0 && i < n && j >= 0 && j < m);
}

int check(int a[505][505], int i, int j) {
    if (!inside(i, j)) return 0;
    return a[i][j];
}

void initialize() {
    for (int i = 0; i < n; ++i)
    for (int j = 0; j < m; ++j) {
        if (a[i][j] == '.') trai[i][j] = 0;
        else trai[i][j] = check(trai, i, j-1) + 1;
    }
    for (int i = 0; i < n; ++i)
    for (int j = m-1; j >= 0; --j) {
        if (a[i][j] == '.') phai[i][j] = 0;
        else phai[i][j] = check(phai, i, j+1) + 1;
    }
    for (int i = 0; i < n; ++i)
    for (int j = 0; j < m; ++j) {
        if (a[i][j] == '.') tren[i][j] = 0;
        else tren[i][j] = check(tren, i-1, j) + 1;
    }
    for (int i = n-1; i >= 0; --i)
    for (int j = 0; j < m; ++j) {
        if (a[i][j] == '.') duoi[i][j] = 0;
        else duoi[i][j] = check(duoi, i+1, j) + 1;
    }
}

int main() {
  //  freopen("input.txt","r",stdin);
    scanf("%d%d",&n,&m);
    for (int i = 0; i < n; ++i)
        scanf("%s\n",a[i]);
    int num = dem();
    initialize();
    for (int i = 0; i < n; ++i)
    for (int j = 0; j < m; ++j)
    if (a[i][j] == '*') {
        if (trai[i][j] > 1 && tren[i][j] > 1 && duoi[i][j] > 1 && phai[i][j] > 1) {
            int current = tren[i][j] + duoi[i][j] + trai[i][j] + phai[i][j] - 3;
            if (current == num) {
                printf("YES\n");
                return 0;
            }
        }
    }
    printf("NO\n");
    return 0;
}
