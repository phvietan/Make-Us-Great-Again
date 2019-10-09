s = 'PICOCTF{FL???????T?FF}'

alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

arr = ['P', 'I', 'C', 'O', 'C', 'T', 'F', '{', 'F', '?', '?', '?', '?', '?', '?', '?', '?', 'T', '?', 'F', 'F', '}']

verbal = 'UEOAI'

def dq(index):
    if index == len(arr):
        print ''.join(arr)
        return
    if index == 13:
        arr[index] = arr[10]
        dq(index+1)
    elif index == 16:
        arr[index] = arr[12]
        dq(index+1)
    else:
        if arr[index] == '?':
            if index != 18:
                for val in alphabet:
                    f = False
                    for j in range(index):
                        if val == arr[j]: f = True
                    if f: continue
                    arr[index] = val
                    dq(index+1)
                    arr[index] = '?'
            else:
                for val in verbal:
                    f = False
                    for j in range(index):
                        if val == arr[j]: f = True
                    if f: continue
                    arr[index] = val
                    dq(index+1)
                    arr[index] = '?'
        else:
            dq(index+1)

dq(0)
