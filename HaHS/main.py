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


print(findNumber(25))
