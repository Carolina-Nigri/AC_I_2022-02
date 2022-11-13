// Carolina Morais Nigri - 761400
// dado03 = 4 * (dado01 - 2 * dado02)

# BEGIN 0000H
    LXI H,C050
    MOV A,M
    MOV B,A
    INX H
    MOV A,M
    RAL
    MOV M,A
    MOV A,B
    SUB M 
    RAL
    RAL
    INX H
    MOV M,A
    HLT
# ORG C050
# DB 11H,02H