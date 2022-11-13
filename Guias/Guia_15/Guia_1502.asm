// Carolina Morais Nigri - 761400
// dado04 = dado01 + dado02 - dado03

# BEGIN 0000H
    LXI H,C050
    MOV A,M
    INX H
    ADD M
    INX H
    SUB M
    INX H
    MOV M,A
    HLT
# ORG C050
# DB 70H,20H,60H