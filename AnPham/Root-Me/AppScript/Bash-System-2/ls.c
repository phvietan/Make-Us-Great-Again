#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>

char buf[1024];

void main(int argc, char * argv[]) {
  if (argc < 3) {
    puts("Im out");
    return;
  }
  printf("First arg %s\n", argv[1]);
  printf("Second arg %s\n", argv[2]);

  int fd = open(argv[2], O_RDONLY);
  read(fd, buf, 1023);
  printf("Content of arg2: %s\n", buf);
}
