N = 402394248802762560784459411647796431108620322919897426002417858465984510150839043308712123310510922610690378085519407742502585978563438101321191019034005392771936629869360205383247721026151449660543966528254014636648532640397857580791648563954248342700568953634713286153354659774351731627683020456167612375777
e1 = 3
e2 = 0x10001

c1 = 239450055536579126410433057119955568243208878037441558052345538060429910227864196906345427754000499641521575512944473380047865623679664401229365345208068050995600248796358129950676950842724758743044543343426938845678892776396315240898265648919893384723100132425351735921836372375270138768751862889295179915967
c2 = 138372640918712441635048432796183745163164033759933692015738688043514876808030419408866658926149572619049975479533518038543123781439635367988204599740411304464710538234675409552954543439980522243416932759834006973717964032712098473752496471182275216438174279723470286674311474283278293265668947915374771552561

def xgcd(a, b):
  x0, x1, y0, y1 = 0, 1, 1, 0
  while a != 0:
    q, b, a = b // a, a, b % a
    y0, y1 = y1, y0 - q * y1
    x0, x1 = x1, x0 - q * x1
  return b, x0, y0

_, a, b = xgcd(e1, e2)

_, inverseC2, __ = xgcd(c2, N)

def decode(value):
  value = hex(value)[2:-1]
  value = value.decode('hex')
  value = value.decode('base64')
  return value

plaintext = pow(c1, a, N) * pow(inverseC2, -b, N) % N

print(decode(plaintext))
