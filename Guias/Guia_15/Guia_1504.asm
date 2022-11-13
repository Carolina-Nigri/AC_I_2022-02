// Carolina Morais Nigri - 761400
// dado03 = dado01 / 2 + dado02 * 2

# BEGIN 0000H
    LXI H,C050
    MOV A,M
    RAR
    MOV M,A
    INX H
    ADD M
    RAL
    MOV M,A
    INX H
    MOV M,A
    HLT
# ORG C050
# DB 20H,30H