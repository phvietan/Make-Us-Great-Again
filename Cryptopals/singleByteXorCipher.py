import codecs

inp = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"

byteInp = codecs.decode(inp, "hex")

print(len(byteInp))

chrMap = {}
for b in byteInp:
    if b in chrMap:
        chrMap[b]+=1
    else:
        chrMap[b]=1

print(sorted(chrMap.items(), key = 
             lambda kv:(kv[1], kv[0])))

e = (120^ord(' '))

out =''
for b in byteInp:
    out += chr(b^e)
print(out)