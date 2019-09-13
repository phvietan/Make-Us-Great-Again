import requests
import time

def getVal(s):
    print s
    s = s[482:]
    target = '</pre>'
    for i in range(len(s) - len(target)):
        cur = s[i:i+len(target)]
        if cur == target:
            return s[:i]
    return 'nooooooooooooo'

def uploadRequest(url, name):
    files = {'name': open(name,'rb')}
    r = requests.post(url, files=files, data={})
    return r

def requestAll():
    url = 'https://zxing.org/w/decode'
    prefix = 'frame_'
    suffix = '_delay-0.1s.gif'
    res = ''
    for i in range(170, 299):
        s = str(i)
        while len(s) < 3:
            s = '0' + s
        cur = prefix + s + suffix
        try:
            r = uploadRequest(url, cur)
            res += getVal(r.text)
            print res
        except:
            print 'Something is wrong in ' + str(i)
        time.sleep(10)
    return res

print requestAll()
