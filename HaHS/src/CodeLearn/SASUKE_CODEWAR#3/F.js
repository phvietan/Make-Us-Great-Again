function equivalent(a, b) {
    const f = (x) => {
        return parseInt(String(x).replace(/0/g, ''));
    }
    return f(a) + f(b) == f(a + b);
}