char shellcode[] = "";             /* global array */

int main (int argc, char **argv)
{
        int (*ret)();              /* ret is a function pointer */
        ret = (int(*)())shellcode; /* ret points to our shellcode */
                                   /* shellcode is type caste as a function */
        (int)(*ret)();             /* execute, as a function, shellcode[] */
        exit(0);                   /* exit() */
}
