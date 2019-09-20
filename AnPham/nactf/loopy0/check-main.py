import os

for i in range(1, 24):
    cmd = 'python -c "print(\'%' + str(i) + '\$p\')" | ./loopy-0'
    print cmd
    s = os.system(cmd)
