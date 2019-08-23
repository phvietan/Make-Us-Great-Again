import codecs

f = open("inp4.txt", "r")
of = open("out4.txt", "w+")
print(len("0e3647e8592d35514a081243582536ed3de6734059001e3f535ce6271032"))
for x in f:
    print(x[:-1])
    print(len(x[:-1]))
    byteInp = codecs.decode(x[:-1], "hex")
    
    chrMap = {}
    for b in byteInp:
        if b in chrMap:
            chrMap[b]+=1
        else:
            chrMap[b]=1

    charList = sorted(chrMap.items(), key = lambda kv:(kv[1], kv[0]))

    e = (charList[-1][0]^ord(' '))

    out =''
    vl = True
    for b in byteInp:
        out += chr(b^e)
        if chr(b^e) in ['$', '%', '#']:
            vl = False
            break
    if(vl):
        of.write(out + '\n')

of.close()

## plaintext: Now that the party is jumping