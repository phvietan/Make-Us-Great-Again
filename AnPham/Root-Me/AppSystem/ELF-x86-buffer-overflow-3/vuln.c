#include <stdio.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

void shell(void);

int main()
{

  char buffer[64];
  int check;
  int i = 0;
  int count = 0;

  printf("Enter your name: ");
  fflush(stdout);
  int dem = 116;
  printf("%p\n%p\n", buffer, &check);
  while(dem--)
    {
      if(count >= 64)
        printf("Oh no...Sorry !\n");
      if(check == 0xbffffabc)
        shell();
      else
        {
            read(fileno(stdin),&i,1);
            printf("Num = %d\n", i);
            switch(i)
            {
                case '\n':
                  puts("meet xet n");
                  printf("\a");
                  break;
                case 0x08:
                  count--;
                  puts("meet 0x08");
                  printf("\b");
                  break;
                case 0x04:
                  puts("meet 0x04");
                  printf("\t");
                  count++;
                  break;
                case 0x90:
                  puts("meet 0x90");
                  printf("\a");
                  count++;
                  break;
                default:
                  puts("meet default");
                  buffer[count] = i;
                  count++;
                  break;
            }
            printf("check = %d\n", check);

        }
    }
}

void shell(void)
{
  setreuid(geteuid(), geteuid());
  system("/bin/bash");
}
