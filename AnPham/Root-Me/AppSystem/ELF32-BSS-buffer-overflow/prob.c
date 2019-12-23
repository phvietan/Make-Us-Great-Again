#include <stdio.h>
#include <stdlib.h>

char username[512] = {1};
void (*_atexit)(int) =  exit;

void cp_username(char *name, const char *arg)
{
  while ( (*(name++) = *(arg++)) );
  *name = 0;
}

int main(int argc, char **argv)
{
  printf("%08p %08p\n", username, _atexit);

  if(argc != 2)
    {
      printf("[-] Usage : %s <username>\n", argv[0]);
      exit(0);
    }

  cp_username(username, argv[1]);
  printf("[+] Running program with username : %s\n", username);

  _atexit(0);
  return 0;
}
