 # Pseudo random generators
 ## Linear Congruential Generators

$$X_n  = (aX_{n-1} + b)\ mod\ m $$

Many Linear Congruential Generators pass *spectral test* for randomness. Advantage: This type of generators is fast, requiring few operations per bit.

Disadvantage: Linear Congruential Generators cannot use in cryptography since they are predictable: *Jim Reeds* and *Joan Boyar*, she also broke quadratic generators and cube generators. Other linear generators also were broken, so were truncated linear generators.

## Linear Feedback Shift Registers

A *feedback shift register* is made up of two parts: a shift register and a feedback function

The simplest kind of feedback shift register is a linear feedback shift register, of *LFSR*. The feedback function is simply the XOR of certain bits in the register; the list of these bits is called a *tap sequence*. Sometimes this is called a *Fibonacci configuration*.

In order for a particular LFSR to be a maximal-register LFSR, the polynomial formed from a tap sequence plus the constant 1 must be a primitive polynomial. Its degree is the length of the shift register.
> A *primitive polynomial of degree n* is an polynomial that divides $x^{2^{n-1}} + 1$, but not $x^d + 1$ for any $d$ that divides $2^n-1$

There is no easy way to generate primitive polynomials mod 2 for a given degree. => Choose random polynomial and test it.

Many primitive polynomials only have a few coefficients -> Sparseness is a source of weakness.

Some annoying properties:
- Sequential bits are linear, which makes them useless for encryption. Internal state is the next n output bits of the generator -> Even if the feedback scheme is unknown, it can be determined from only 2n output bits of the generator, by using the highly efficient *Berlekamp-Massey algorithm*.
- Large random numbers generated from sequential bis of this sequence are highly correlated and not very random at all.
- LSFRs are slow in software

### Speed-up
LSFRs are faster in assembly language than in C. -> Run 16 LFSRs (or 32, depending on your computer's word size) in parallel. This scheme uses an array of words that is the length of the LFSR, with each bit position in the words representing a different LFSR. Assuming all the feedback polynomials are the same, this can run pretty quickly. In general, the best way to update shift registers is to multiply the current state by suitable binary matrices.

Modifying the LFSR's feedback scheme: no better cryptographic, but still has a maximal period and is easy to implement in software. Instead of using the bits in the tap sequence to generate the new left-most bit, each bit in the tap sequence is XORed with the output of the generator and replaced -> This is called *Galois configuration*