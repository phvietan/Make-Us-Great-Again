from PIL import Image

im = Image.open("insignificant_hawkeye.png")
w, h = im.size

vR, vG, vB = 0, 0, 0
s = []
for i in range(w):
    for j in range(h):
        r, g, b, a = im.getpixel((i, j))
        if r % 2 == 1 or g % 2 == 1 or b % 2 == 1:
            s.append(str(r % 2))
            s.append(str(g % 2))
            s.append(str(b % 2))

s = ''.join(s)
print s
# for i in range(0, len(s), 8):
#     cur = s[i:i+8]
#     print cur

#         if r & 1 == 0:
#             vR = vR*2
#             sR.append('0')
#         else:
#             vR = vR*2+1
#             sR.append('1')
#
#         if g & 1 == 0:
#             vG = vG*2
#         else: vG = vG*2+1
#
#         if b & 1 == 0:
#             vB = vB*2
#         else: vB = vB*2+1
#
# def normalize(s):
#     if s[:2] == '0x': s = s[2:]
#     if s[-1] == 'L': s =s[:-1]
#     return s
#
# # print len(normalize(hex(vR)))
# print sR
#
# print normalize(hex(vR))
# print normalize(hex(vG))
# print normalize(hex(vB))
#
# print w * h / 3
