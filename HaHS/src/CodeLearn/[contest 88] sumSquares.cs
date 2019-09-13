/**
 * https://codelearn.io/FightsTask/Index?Id=126094&TaskId=126100
 *
 * Difficulty   : easy
 * Problem tags : fast sqrt ==> sử dụng C#
 */

 int SumSquares(long k) {
    int res = 0;
    long l = (long)Math.Ceiling(Math.Sqrt(k / 2));
    long r = (long)Math.Floor(Math.Sqrt(k));
    if (r * r == k)
        res++;
    for (long i = l; i <= r; i++) {
        long x = i * i, y = k - x;
        if (y <= 0)
            continue;
        if (y > x)
            break;
        long g = (long)Math.Floor(Math.Sqrt(y));
        if (g * g == y) {
            res++;
            if (x > y)
                res++;
        }
    }
    return res;
}
