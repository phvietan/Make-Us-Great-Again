import base64

data = '{"money": 200, "history": ["Yummy pepparkaka", "Yummy chocolate chip cookie"]}'

# Standard Base64 Encoding
encodedBytes = base64.b64encode(data)

print(encodedBytes)
