N1 = 514745167025222387434132377137056715954750729807151447929894289695587285793889099978536904494455862473045694392353612260528582074521711735864082380505874261026769465596315849668245703081452047808798727647904141791488099702631575692170683102622471798376397440600292225038412176681344166204027842724877162681931
N2 = 332459552799915544356022641605448137617079921391832222557892949808060953028449422328281413629912335051440744955455010851012308918294549765005480121061697711447087615327860789708246235156912421474047484838827777697938563515420810650393553528058831317409340577149233554235346445890238642955390137465511286414033
N3 = 665701912162243069059653781669230805473457427767514323262762891771122352328706695409103713864384833437438648120217615990765220365745013739246022203593234785338178963805463643869398986119431772931646042972240277833431035018628949924813463553419243108837309078316455504749755062865258063926243606206806549969161

e = 3

c1 = 159610386572167689266326385036487109027500941380400104125191262882664358398577536610497671009102596940624920315091422093100238619835848693651492344785000232303139338861093680138737091249739575100655219967271819921458016154329847843423233652818852580016834561970850695063090000199448970052668647861992230109134
c2 = 80704323590708576386562863656130406931573788060159775931074197125212042930440694778363300836637666152530601069635539711403775897104413839059003511049631024172974390473641408894970527777947213128650545118958630567223577806350516381008539951304600069024003674444114727988917350720932569342357635015732615468372
c3 = 290728542387622789691059470283422806073663108257730190721270583629901119139049111765276898786687400514004023098315787810926656039376046957101984075353288285867739293190825676944209163087896697394093577432590616749562076462942759742984949258019827469729922204479107792698042941392668070743176808454529741938138

def decode(value):
  value = hex(value)[2:-1]
  value = value.decode('hex')
  value = value.decode('base64')
  return value

def xgcd(a, b):
  x0, x1, y0, y1 = 0, 1, 1, 0
  while a != 0:
    q, b, a = b // a, a, b % a
    y0, y1 = y1, y0 - q * y1
    x0, x1 = x1, x0 - q * x1
  return b, x0, y0

def chinese_remainder_theorem(vals, mods):
  all = 1
  for val in mods: all *= val

  result = 0
  for i in range(len(mods)):
    cur = (all // mods[i])
    _, inverse, __ = xgcd(cur, mods[i])
    result += inverse * cur % all * vals[i] % all

  result %= all
  for i in range(len(mods)):
    assert result % mods[i] == vals[i], 'Something is wrong'

  return result

def find_kth_root(n, k):
  res, L, R = 0, 0, n
  while L <= R:
    M = (L+R) // 2

    x = n
    for i in range(k):
      x //= M

    if x >= 1:
      res = M
      L = M+1
    else: R = M-1

  return res

crt = chinese_remainder_theorem([c1, c2, c3], [N1, N2, N3])
plaintext = find_kth_root(crt, e)
assert plaintext * plaintext * plaintext == crt, 'Something is wrong'
print(decode(plaintext))
