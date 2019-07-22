import json
from tqdm import tqdm
from egcd import egcd
from pathlib import Path
import sys


def get_next(a, power, N):
    b = a ** power % N
    return b, b % 256


if not Path('public.key').exists():
    print("Key file not found")
    exit(1)


if len(sys.argv) != 3:
    print("Usage: python3 cryptor.py <filename_in> <filename_out>")
    exit(1)


try:
    key = json.loads(Path('public.key').open().read())
    data = Path(sys.argv[1]).open('rb').read()
except Exception as e:
    print("Error during keyfile load: {}".format(e))
    exit(1)
else:
    seed = int(input("Input seed value (int16): "))
    if seed < 0 or seed > 2**16:
        print("Invalid seed. Encryption may be too slow.")
        exit(1)
    power = int(input("Input power value (2-16): "))
    if power < 2 or power > 16:
        print("Invalid power. Encryption may be too slow.")
        exit(1)

    if egcd(power, key['N'])[0] != 1:
        print("Invalid power value")
        exit(1)

    # calculate offset
    for _ in range(key['O']):
        seed = get_next(seed, power, key['N'])[0]

    with Path(sys.argv[2]).open('wb') as w:
        for i in tqdm(range(len(data))):
            seed, bt = get_next(seed, power, key['N'])
            w.write(bytes([data[i] ^ bt]))
