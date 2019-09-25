# KEY EXCHANGE:
#### A. With Symmetric Cryptography: This use Key Distribution Center (KDC) - Trent
1. Alice calls Trent and requests a session key
2. Trent generates a random session key. He encrypts two copies of it: one in Alice's key and the other in Bob's key. Trent sends both to Alice.
3. Alice decrypts her copy of the session key, and sends Bob his copy of the session key
4. Bob decrypts his copy of the session key. Both Alice and Bob use this session key to communicate securely.
	
>Cons: First, Trent is a potential bottleneck. Second, if Mallory corrupts Trent, he can read all past communications traffic that he has saved, as well as all future communications traffic.

#### B. With Public-Key Cryptography (so-called basic hybrid cryptosystem):		
1. Alice gets' Bob's public key from the KDC
2. Alice generates a random session key, encrypts it using Bob's public key, then sends it to Bob.
3. Bob decrypts Alice's message using his private key.
4. Both of them communicate securely with the same session key.

>Cons: Despite this protocol efficiently avoid the harm of Eve, it does nothing to prevent Mallory imitating both Alice and Bob.

#### C. Interlock Protocol: invented by Ron Rivest and Adi Shamir, having the advantage in foiling the man-in-the middle attack aka. Mallory
1. Alice sends Bob her public key.
2. Bob sends Alice his public key.
3. Alice encrypts her message using Bob's public key. She sends half of the encrypted message to Bob.
4. Bob encrypts his message using Alice's public key. He sends half of the encrypted message to Alice.
5. Alice sends the other half of her encrypted message to Bob. 
6. Bob puts the two halves of Alice's message together and decrypts it with his private key. Bob sends the other half of his encrypted message to Alice.
7. Alice puts the two halves of Bob's message together and decrypts it with her private key.

>Pros: this protocol is more secure than the previous if the encryption algorithm used is in block chaining mode. More precisely, Mallory can not know what Alice or Bob says until he has both pieces of her/his message. So the conversation between Alice and Bob will be completely different if Mallory tries to mimic both sides of a conversation (that requires him know Alice and Bob very well).
#### D. With Digital Signatures: another hybrid cryptosystem
Trent signs both Alice's and Bob's public keys. When Alice and Bob receive the keys, they each verify Trent's signature to know if the public key actually belongs to that other person. To read messages which are transmitting, Mallory must make Alice and Bob believe in his phony public key.

#### E. Key and Message Transmission: Alice and Bob need not complete the key-change protocol before exchanging messages. Messages can be sent without any previous key exchange protocol: another hybrid cryptosystem, which is most often used in a communications system.
1. ALice generates a random session key, K, and encrypts M using K: $E_{k}(M)$
2. Alice gets Bob's public key from the database.
3. Alice encrypts K with Bob's public key: $E_{B}(K)$
4. Alice sends both the encrypted message and encrypted session key to Bob: $E_{K}(M), E_{B}(K)$. For added security against man-in-middle attacks, Alice can sign the transmission.
5. Bob decrypts Alice's session key, K, using his private key.
6. Bob decrypts Alice's message using the session key.
	
>A benefit of this protocol is that it can be combined with digital signatures, timestamps, and any other security protocols.

# AUTHENTICATION:
#### A. Authentication using one-way functions:
1. Alice sends the host her password
2. The host performs a one-way function on the password
3. The host compares the result of the one-way function to the value it previously stored

>Pros: the host no longer stores a table of everybody's valid password.

>Cons: this protocol is vulnerable with dictionary attacks.
#### B. Authentication using one-way functions and salt:
Like above, but this protocol concatenates the salt value with password before calculating the one-way function on the result, and the host stores both salt value and the result of one-way function.

To attack the cryptosystem using dictionary attack, Mallory has to generate the one-way hash for each possible salt value for each element in his dictionary.

The concept of salt is the beginning of the concept of initialization vector.

>Cons: this protocol only protects against general dictionary attacks on a password file, not a single password.

#### C. Authentication using one-way functions and pepper:
The only different between pepper and salt is that salt is stored by host, while pepper is not.

>Protect every single user from dictionary attack.

#### D. SKEY:
1. To set up the system, Alice enters a random number, $R$.
2. The host computes calculate $s_{i}$, where $0\leq i\leq n$, $s_{0}=R, s_{i+1}=f(s_{i})$, $f$ is one-way hash function. The host stores $s_{n}$ and give Alice all other numbers.

When at the i_th time that Alice wants to login, she types her name and $s_{n-i}$. The system verifies if the hash function of the number she entered is equal to the current number the system stores. If Alice enters the right number, the system overwrite that number onto the current stored number and let Alice in.
	
#### E. Authentication using Public-Private Cryptography:
To prevent Eve from reading Alice's password in salt protocol, the host will keep user's public key, all users keep their own private keys. When anyone wants to login, the host give him a random string. User have to encrypts the string with his private key, and sends it back to the host, maybe along with her name. The host decrypts the message by the public key accomplished with user's name. If the result matches what the host sent user, then the host allows user access to the system.

The idea is from zero-knowledge proof of identity.

#### F. Mutual Authentication using the Interlock Protocol: still falls to more complicated attack

#### SKID:
SKID2 and SKID3 are symmetric cryptography identification protocols using a MAC to provide security and both assume that both Alice and Bob share a secret key $K$.

1. Alice chooses a random number, $R_A$. She sends it to Bob.
2. Bob chooses a random number, $R_B$. He sends Alice: $R_B, H_K(R_A, R_B, B)$. $H_K$ is the MAC.
3. Alice computes $H_K(R_A, R_B, B)$ and compares it with what sh receivd from Bob. If the results are identical, then Alice knows that she is communicating with Bob.

SKID3 provides mutual authentication between Alice and Bob. Step (1) through (3) are identical to SKID3, and then protocol proceeds with:

4. Alice sends Bob: $H_K(R_B,A)$
5. Bob computes $H_K(R_B,A)$, and compares it with what he received from Alice. If the results are identical, then Bob knows that he is communicating with Alice.

This protocol is not secure against a man-in-the-middle attack. In general, a man-in-the-middle attack can defeat any protocol that doesn't involve a secret of some kind.

# AUTHENTICATION AND KEY EXCHANGE:

#### A. Wide-Mouth Frog: the simplest symmetric key-management protocol that uses a trusted server.
1. ALice concatenates a timestamp, Bob's name, and a random session key and encrypts the whole message with the key she shares with Trent. She sends this to Trent, along with her name: $A,E_{A}(T_{A}, B, K)$
2. Trent decrypts the message from Alice, then he sends to Bob this message: $E_{B}(T_{B},A,K)$

>Cons: the biggest assumption made in this protocol is that Alice is competent enough to generate good session keys. Remember that random numbers aren't easy to generate.

#### B. Yahalom:
1. Alice sends to Bob: $A,R_{A}$, where $R_{A}$ is a random number.
2. Bob concatenates Alice's name, Alice's random number, his own random number, and encrypts it with the key he shares wih Trent. He sends this to Trent, along with his name: $B, E_{B}(A,R_{A},R_{B})$
3. Trent generates a random session key. He sends to Alice: $E_{A}(B,K,R_{A},R_{B}), E_{B}(A,K)$
4. Alice decrypts the first message, confirms that $R_{A}$ has the same value as it did in step 1. Alice sends Bob: $E_{B}(A,K), E_{K}(R_{B})$
5. Bob confirms that $R_{B}$ has the same value as it did in step 2.

>Cons: replay attack

#### C. Needham-Schroeder: uses symmetric cryptography and Trent:
1. Alice sends a message to Trent consisting of her name, Bob's name, and a random number
2. Trent generates a random session key. Then he sends Alice: $E_{A}(R_{A},B,K,E_{B}(K,A))$
3. Alice confirms that $R_{A}$ is the same value that she sent Trent in step 1 ($R_{A}$ is here to prevent replay attacks). Alice sends Bob the message that Tent encrypted in his key: $E_{B}(K,A)$
4. Bob decrypts the message and extracts K. He sends Alice: $E_{K}(R_{B})$
5. Alice sends back to Bob: $E_{K}(R_{B}-1)$
6. Bob verifies that it is $R_{B}-1$ (also to prevent replay attacks)

>Cons: old session keys are valuable: If Mallory gets access to an old $K$, he can launch a successful attack. All he has to do is record Alice's messages to Bob in step 3. Then, once he has $K$, he can pretend to be Alice: First, he sends Bob $E_{B}(K,A)$, so Bob sends Alice $E_{K}(R_{B})$. But Mallory intercepts the message, decrypts it with $K$, and sends to Bob $E_{K}(R_{B}-1)$ => Mallory wins this game.

A way to fix this is using timestamps. But timestamps require a secure and accurate system clock - not a trivial problem in itself.

#### D. Otway-Rees: a modified version of Needham-Schroeder which fix the problem of Needham-Schroeder but not using timestamps.
1. Alice generates a message consisting of an index number, her name, Bob's name, and a random number, all encrypted in the key she shares with Trent. She sends this message to Bob along with the index number, her name, and his name: $I, A, B, E_A(R_A, I, A, B)$
2. Bob generates a message consisting of a new random number, the index number, Alice's name, and Bob's name, all encrypted in the key he shares with Trent. He sends it to Trent, along with Alice's encrypted message, the index number, her name, and his name: $I,A,B,E_A(R_A,I,A,B),E_B(R_B,I,A,B)$
3. Trent generates a random session key. Then he creates two messages. One is Alice's random number and the session key, encrypted in the key he shares with Alice. The other is Bob's random number and the session key, encrypted in the key he shares with Bob. He sends these two messages, along with the index number, to Bob: $I,E_A(R_A,K),E_B(R_B,K)$
4. Bob sends Alice the message encrypted in her key, along with he index number: $I,E_A(R_A,K)$
5. Alice decrypts the message to recover her key and random number. She then confirms that both have not changed in the protocol.

#### E. Kerberos: also a variant of Needham-Schroeder. It works but still need everyone's clocks to be synchronized with Trent's clock. Suppress-replay attacks which take advantage of failure of system in clock-synchronizing can make irritating consequences
1. Alice sends a message to Trent with her identity and Bob's identity: $A,B$
2. Trent generates a message with a timestamp, a lifetime, $L$, a random session key, and Alice's identity. He encrypts this in the key he shares with Bob. Then he takes the timestamp, the lifetime, the session key, and Bob's identity, and encrypts these in the key he shares with Alice. He sends both encrypted messages to Alice: $E_A(T,L,K,B),E_B(T,L,K,A)$
3. Alice generates a message with her identity and the timestamp, encrypts it in $K$, and sends it to Bob. Alice also sends Bob the message encrypted in Bob's key from Trent: $E_K(A,T), E_B(T,L,K,A)$
4. Bob creates a message consisting of the timestamp plus one, encrypts it in $K$, and sends it to Alice: $E_K(T+1)$

If sender's clock is ahead of the receiver's clock, Mallory can intercept a message from the sender and replay it later when the timestamp becomes current at the receiver's site. This attack is called $\mathbb{suppress-replay}$ and can ave irritating consequences.
#### F. Neuman-Stubblebine: an enhancement to Yahalom => An excellent protocols
1. Alice concatenates her name and a random number and sends it to Bob: $A,R_A$
2. Bob concatenates Alice's name, her random number, and a timestamp, and encrypts with the key he shares with Trent. He sends it to Trent along with his name and a new random number: $B,R_B,E_B(A,R_A,T_B)$
3. Trent generates a random session key. Then he creates two messages and sends to Alice: $E_A(B,R_A,K,T_B),E_B(A,K,T_B),R_B$
4. Alice decrypts the message encrypted with her key, extracts $K$, and confirms that $R_A$ has the same value as it did in step [1]. Alice sends to Bob two messages: $E_B(A,K,T_B),E_K(R_B)$
5. Bob decrypts the message encrypted with her key, extracts $K$, and confirms that $T_B$ and $R_B$ have the same value they did in step [2].

Alice can use the message she received from Trent for subsequent authentication with Bob, within some predetermined time limit. Assume ALice and Bob completed the above protocol, communicated, and then terminated the connection. Alice and Bob can reauthenticate in three steps, without having to rely on Trent:
1. Alice sends Bob: $E_B(A,K,T_B), R'_A$
2. Bob sends Alice another new random number, and Alice's new random number encrypted in their session key: $R'_B, E_K(R'_A)$
3. Alice sends Bob his new random number, encrypted in their session key: $E_K(R'_B)$

The new random numbers prevent replay attacks.

#### G. Other protocols: DASS, Denning-Sacco, Woo-Lam
##### DASS: Distributed Authentication Security Service protocols provide for mutual authentication and key exchange. DASS uses both public key and symmetric cryptography. Alice and Bob each have a private key. Trent has signed copies of their public keys.
1. Alice sends a message to Trent: $B$
2. Trent sends Alice Bob's public key, $K_B$, signed with Trent's private key. The signed message includes Bob's name: $S_T(B,K_B)$
3. Alice verifies Trent's signature to confirm that the key she received is actually Bob's public key. She generates a random session key, and a random public-key/private-key key pair: $K_p$. She encrypts a timestamp with $K$. Then she signs a key lifetime, L, her name, and $K_p$ with her private key, $K_A$. Finally, she encrypts K with Bob's public key, and signs it with $K_p$. She sends all of this to Bob: $E_K(T_A), S_{K_A}(L,A,K_p),S_{K_p}(E_{K_B}(K))$
4. Bob sends a message to Trent (this may be a different Trent), consisting of Alice's name: $A$
5. Bob receives from Trent: $S_T(A,K_A)$
6. Bob verifies Trent's signature, then verifies Alice's signature and recovers $K_p$. He verifies the signature and uses his private key to recover $K$. Then he decrypts $T_A$ to make sure this is a current message.
7. If mutual authentication is required, Bob encrypts a new timestamp with K, and sends it to Alice: $E_K(T_B)$
8. Alice decrypts $T_B$ with K to make sure that the message is current.

##### Denning-Sacco
1. Alice sends a message to Trent with her identity and Bob's identity: $A,B$
2. Trent sends Alice Bob's public key and her own public key: $S_T(B,K_B), S_T(A,K_A)$
3. Alice sends Bob a random session key and a timestamp, signed in her private key and encrypted in Bob's public key, along with both signed public keys: $E_B(S_A(K,T_A),S_T(B,K_B),S_T(A,K_A))$
4. Bob decrypts Alice's message with his private key and the verifies Alice's signature

Disadvantage: After completing the protocol with Alice, Bob can then masquerade as Alice. In fact, Bob can fool everyone on the network until the timestamp expires.
Fixing: add the names inside the encrypted message in step [3]: $E_B(S_A(A,B,K,T_A)),S_T(B,K_B),S_T(A,K_A))$

##### Woo-Lam
1. Alice sends a message to Trent with her identity and Bob's identity: $A,B$
2. Trent sends Alice Bob's public key, signed with Trent's private key: $S_T(K_B)$
3. Alice verifies Trent's signature. Then she sends Bob her name and a random number, encrypted with Bob's public key: $E_{K_B}(A,R_A)$
4. Bob sends Trent his name, Alice's name, and Alice's random number encrypted with Trent's public key: $A,B,E_{K_T}(R_A)$
5. Trent sends Bob: $S_T(K_A),E_{K_B}(S_T(R_A,K,A,B))$
6. Bob verifies Trent's signature, then sends Alice the second part of Trent's message from step [5] and a new random number-all encrypted in Alice's public key: $E_{K_A}(S_T(R_A,K,A,B),R_B)$
7. Alice verifies Trent's signature and her random number. Then she sends Bob the second random number, encrypted in the session key: $E_K(R_B)$
8. Bob decrypts his random number and verifies that it unchanged.

## Lessons Learned
- Many protocols failed because the designers tried to be too clever. They optimized their protocols by leaving out important pieces: names, random numbers, and so on. The remedy is to make everything explicit.
- Trying to optimize is an absolute tar pit and depends a whole lot on the assumptions you make. For example: if you have authenticated time, you can do a whole lot of things you can't do if you don't.
- The protocol of choice depends on the underlying communications architecture. Do you want to minimize the size of messages or the number of messages? Can all parties talk with each other or can only a few of them?