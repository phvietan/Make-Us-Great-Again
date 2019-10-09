#include <stdio.h>
#include <stdlib.h>

typedef struct {
  int a, b;
} gt;

void checkDie(gt * node) {
  if (node == NULL) puts("Node does not exist");
  else puts("Node exists");
}

// void main(int argc, char * argv[]) {
//   puts("Before create node");
//   gt * node = NULL;
//   checkDie(node);
//
//   node = (gt*)malloc(sizeof(gt));
//   puts("created node");
//   printf("%p\n", node);
//   checkDie(node);
//
//   free(node);
//   puts("After free node");
//
//   checkDie(node);
// }

void main() {
  int buf[100];
  printf("Size is %d\n", sizeof(buf));
  char * arr = (char*)malloc(100 * sizeof(char));
  printf("Size is %d\n", sizeof(arr));
}
