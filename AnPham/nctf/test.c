#include <stdio.h>

int main() {
  char s[100];
  gets(s);
  s[10] = '\x00';
  puts(s);
  return 0;
}
