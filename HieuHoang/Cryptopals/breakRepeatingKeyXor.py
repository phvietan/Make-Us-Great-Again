import Crypto.Util.number
import json, string, itertools
from base64 import b64decode

t1 = 'this is a test'
t2 = 'wokka wokka!!!'

inputfile = 'inp6.txt'
f = open(inputfile, 'r')
freqfile  = 'letter_freq.json'
freqf = open(freqfile, 'r')
letterFreq = json.loads(freqf.read().strip())
freqSorted = []
for letter in letterFreq:
    freqSorted.append((letterFreq[letter], letter))
freqSorted.sort(key = lambda x: -x[0])

def countOnes(b):
    ans = 0
    while b != 0:
        b = b & (b-1)
        ans += 1
    return ans

def HammingDistance(s1, s2):
    c = [s1[i] ^ s2[i] for i in range(len(s1))]
    ans = 0
    for i in c:
        ans += countOnes(i)
    return ans

inputbytes = b64decode(f.read())

listKeySize = []
for ksz in range(2, 41):
    AvgDists = []
    for start in range(0, len(inputbytes), ksz):
        if len(inputbytes) - start < ksz*2:
            break
        AvgDists.append(HammingDistance(inputbytes[start: start+ksz], inputbytes[start+ksz: start+2*ksz])/ksz)
    avg = sum(AvgDists) / len(AvgDists)
    listKeySize.append((avg, ksz))

listKeySize.sort()

ksz = listKeySize[0][1]


key = b''
for i in range(ksz):
    byteMap = {}
    ciphertext = bytearray(b'')
    for c in range(i, len(inputbytes), ksz):
        ciphertext.append(inputbytes[c])
        if inputbytes[c] in byteMap:
            byteMap[inputbytes[c]] += 1
        else:
            byteMap[inputbytes[c]] = 1
    lst = sorted(byteMap.items(), key = 
             lambda kv:(-kv[1], kv[0]))

    for l in range(len(freqSorted)):
        singleKey = lst[0][0] ^ ord(freqSorted[l][1])
        if all(chr(pc[0] ^ singleKey) in string.printable for pc in lst):
            key = b''.join([key, bytes([singleKey])])
            break

print(key)
iterkey = itertools.cycle(key)
plaintext = b''.join([bytes([c ^ next(iterkey)]) for c in inputbytes])
print(plaintext)