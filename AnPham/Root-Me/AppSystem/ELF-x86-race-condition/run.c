#include <pthread.h>
#include <stdio.h>
#include <string.h>
#include <sys/ptrace.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>

char buf[1000];

void *run(void *threadid)
{
  long tid;
  tid = (long)threadid;
  printf("About to run thread: %d\n", tid);
  // char * program[] = {"/root/Documents/Make-Us-Great-Again/AnPham/Root-Me/AppSystem/ELF-x86-race-condition/main", NULL, NULL};
  // execve(program[0], program, NULL);
  pthread_exit(NULL);
}

void *checkfile(void *threadid)
{
  long tid;
  tid = (long)threadid;
  printf("About to run thread: %d\n", tid);

  usleep(120000);
  int fd_tmp;
  if ((fd_tmp = open("/tmp/tmp_file.txt", O_RDONLY)) == -1)
  {
    perror("[-] Can't read tmp file ");
    pthread_exit(NULL);
  }
  read(fd_tmp, buf, 1000);
  printf("%s\n", buf);

  pthread_exit(NULL);
}

int main (int argc, char *argv[])
{
  pthread_t threads[2];
  int rc;
  long t;
  for(t=0; t<2; t++){
     printf("In main: creating thread %ld\n", t);

     if (t == 0) rc = pthread_create(&threads[t], NULL, run, (void *)t);
     else {
       rc = pthread_create(&threads[t], NULL, checkfile, (void *)t);
     }
     if (rc){
        printf("ERROR; return code from pthread_create() is %d\n", rc);
        exit(-1);
     }
  }

  /* Last thing that main() should do */
  pthread_exit(NULL);
}
