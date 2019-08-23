printable = 'BCDE4567FGHIJKLM012389abPQRSTUVWXYZ!"#cdefghijklmnopqrstuvwxyzANO$%&\'()*+,-./:;<=>?@[\\]^_`|~'
print printable

def encrypt(m):
	return pow(m,2,n)

p = 5411451825594838998340467286736301586172550389366579819551237
q = 5190863621109915362542582192103708448607732254433829935869841
c = 196353764385075548782571270052469419021844481625366305056739966550926484027148967165867708531585849658610359148759560853

n = p*q

flag = int('d4rk{*************REDACTED!!!!!!*************}code'.encode('hex'),16)

def normalize(hex):
	if hex[:2] == '0x':
		hex = hex[2:]
	if hex[-1] == 'L':
		hex = hex[0:-1]
	return hex

def decrypt(cipher):
	return normalize(hex(cipher)).decode('hex')

l = encrypt(flag)
count = 0
while  l > flag and count <= 500000:
	l = encrypt(l)
	count += 1

phi = (p-1)*(q-1)

def eE(flag):
	l = encrypt(flag)
	while  l > flag:
		l = encrypt(l)
	return l

s = ['.']*39
count = 0
def dq(n):
	global count
	if n == 39:
		x = 'd4rk{' + ''.join(s) + '}code'
		cur = int(x.encode('hex'), 16)
		t = cur - 196353764385075548782571270052469419021844481625366305056739966550926484027148967165867708531585849658610359148759560853
		count += 1
		if count % 10000 == 0:
			print count, x

		if t <= 0: return
		eCur = eE(cur)
		if eCur == 196353764385075548782571270052469419021844481625366305056739966550926484027148967165867708531585849658610359148759560853:
			print 'Found'
			print 'd4rk{' + x + '}code'
			exit()
		return
	for val in printable:
		s[n] = val
		dq(n+1)

dq(0)
