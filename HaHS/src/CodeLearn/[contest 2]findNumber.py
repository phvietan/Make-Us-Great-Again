# https: // codelearn.io/FightsTask/Index?Id = 120342 & TaskId = 118898

# Difficulty: hard
# Problem tags: math, number theory, big integer

# Tutorial: cần sử dụng số lớn, nên dùng python.
# Đây là chuỗi số Hofstadter Sequence, có 2 chuỗi song song F và G
# và là phần bù của nhau.
# Một số phần tử ban đầu của 2 chuỗi:
# F: 1 3 7 12 18 26 35 45 56 69 ...
# G: 2 4 5  6  8  9 10 11 13 14 ...
# Và ta có F(i) = F(i-1) + G(i-1)
# và G(i) = G(i-1) + 1 hoặc G(i-1) + 2
# Nhận xét rằng chuỗi G mỗi phần tử chỉ tăng 1 hoặc 2 do tốc độ tăng trên chuỗi F nhanh hơn,
# và chuỗi G hình thành các đoạn con liên tiếp có thể tính được tổng,
# ví dụ đoạn 4,5,6 hay đoạn 8,9,10,11
# Dựa trên tính chất này, ta có thể nhảy trên đoạn F dựa trên các đoạn tăng liên tiếp của G
# Tức là với mỗi đoạn liên tiếp trên G, ta skip một đoạn trên F để nhảy nhanh đến vị trí n.
# Ta tính sẵn các phần tử đầu tiên của mảng F (tính sẵn 10^6 số đầu), sau đó dựa trên các số
# này, ta có tính được F(n) nếu n > 10^6 bằng cách nhảy như trên.


def findNumber(n):
    if n == 1:
        return 1
    if n == 2:
        return 3
    if n == 3:
        return 7

    preF = [-1, 1]
    preG = [-1, 2]
    used = {}
    used[1] = used[2] = 1
    for i in range(2, 1000000):
        preF.append(preF[i-1] + preG[i-1])
        t = preG[i-1]+1
        used[preF[i]] = 1
        while used.get(t) == 1:
            t += 1
        preG.append(t)

    i = 4
    f = 12
    g = 6
    c = 4
    while i < n:
        ff = f + g
        l = g+2
        r = preF[c]-2
        if i+(r-l+1)+1 >= n:
            j = n-i
            r = l+j-2
        f = ff + (l+r)*(r-l+1)/2
        i += (r-l+1)+1
        g = r+1
        c += 1
    return round(f)
