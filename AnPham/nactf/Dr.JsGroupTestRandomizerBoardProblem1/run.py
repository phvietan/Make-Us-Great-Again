from telnetlib import Telnet
import socket
import struct
import time
import sys

def send(sock, msg):
    try:
        sock.send(msg)
        time.sleep(1.5)
        return sock.recv(1024).decode()
    except:
        return ''

def find(val, arr):
    try:
        res = arr.index(val)
        return res
    except:
        return -1

def normalize(s):
    res = []
    for val in s:
        if val < '0' or val > '9': break
        res.append(val)
    res = ''.join(res)
    return int(res)

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect(('shell.2019.nactf.com', 31258))
time.sleep(1)
resp = sock.recv(1024)
print resp
arr = []
tr2 = -111
tr1 = -111
count = 0
while True:
    resp = normalize(send(sock, 'r\n'))
    print resp,
    cur = (tr2,tr1,resp)
    index = find(cur, arr)
    if index != -1 and len(arr) - index > 5: count += 1
    if count >= 5:
        print 'Found repeat string'
        sys.stdout.flush()
        resp = send(sock, 'g\n')
        for i in range(4):
            _,__,cur = arr[index+i+1]
            cur = str(cur) + '\n'
            resp = send(sock, cur)
            print resp
    arr.append(cur)
    sys.stdout.flush()
    tr2 = tr1
    tr1 = resp
sock.close()
