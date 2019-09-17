import socket
import struct
import time

def send(sock, msg):
    try:
        sock.send(msg)
        time.sleep(1)
        return sock.recv(1024).decode()
    except:
        return ''

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect(('shell.2019.nactf.com', 31258))
time.sleep(1)

resp = sock.recv(1024)
print resp

# sendsomething = 'abc'
# resp = send(sock, sendsomething)
# print resp

sock.close()
