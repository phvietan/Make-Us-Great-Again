#include <stdio.h>

int main(int argc, char * argv[]) {
  int k = 10;
  char * buf[10];
  snprintf(buf, sizeof(buf), argv[1]);
  puts(buf);
  printf("%d\n", k);
  return 0;
}
