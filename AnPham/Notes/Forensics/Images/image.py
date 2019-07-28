from PIL import Image
import re
import sys

file = open("mysteryfile","wb")

im = Image.open('newImage.png') # Can be many different formats.
pix = im.load()
#print (im.size)  # Get the width and hight of the image for iterating over
count = 0
line = ""
# red =[]
# for i in range(256):
#     red.append(0)
# green =[]
# for i in range(256):
#     green.append(0)
# blue =[]
# for i in range(256):
#     blue.append(0)
print (pix)
bitstring = ""
for x in range(857):
    for y in range(703):
        a,b,c,d=pix[x,y]
        print (a,b,c, d)  # Get the RGBA Value of the a pixel of an image
#im.save('new2.png')
file.write(bytearray(line,"utf-8"))
#print(bitstring)

# print(,max(red))
# print(str(max(green)))
# print(str(max(blue)))
# for i in range(256):
#     if (red[i]!=0):
#         newline = newline + "{}:{} ".format(i,red[i])
# print(newline)
# newline = ""
# for i in range(256):
#     if(green[i]!=0):
#         newline = newline + "{}:{} ".format(i,green[i])
# print(newline)
# newline = ""
# for i in range(256):
#     if(blue[i]!=0):
#         newline = newline + "{}:{} ".format(i,blue[i])
# print(newline)
newline = ""
#print (bitstring)
# for c in line:
#     if re.match("[a-zA-Z0-9{}]",c):
#         newline = newline + c
# print(newline)

#print(red)
#print(blue)
#print(green)
