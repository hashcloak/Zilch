READ r0 r0 1        ; r0 is filled with a private value from auxiliary tape (e.g. p = 17)
READ r1 r1 1        ; r1 is filled with a private value from auxiliary tape (e.g. q = 11)
SUB r3 r0 1         ; p - 1 = 16
SUB r4 r1 1         ; q - 1 = 10
MULL r5 r3 r4       ; phi(n) = (p - 1) * (q - 1) = 160
READ r7 r7 1        ; r7 is filled with a private value from auxiliary tape (e.g. d = 23)
READ r8 r8 0        ; public e = 7
MULL r9 r7 r8       ; compute d * e
UMOD r11 r9 r5      ; compute (d * e) mod phi(n)
ANSWER r0 r0 r11    ; Answer should be 1
