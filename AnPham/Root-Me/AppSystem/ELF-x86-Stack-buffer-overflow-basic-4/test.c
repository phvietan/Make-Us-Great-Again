#include <stdlib.h>
#include <stdio.h>

struct envInfo {
  int a, b;
};

struct envInfo tong(int a, int b) {
  struct envInfo res;
  res.a = a;
  res.b = b;
  return res;
}

void main() {
  struct envInfo env = tong(1, 2);
  printf("%d %d\n", env.a, env.b);
}
