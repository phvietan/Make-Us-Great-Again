import os

for i in range(1, 30):
    cmd = 'python -c "print(\'%' + str(i) + '\$p\')" | ./format-1'
    print cmd
    s = os.system(cmd)
    # print cmd
