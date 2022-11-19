// Carolina Morais Nigri - 761400
// Resto inteiro (IMOD) da divisão entre dois dados
// dado03 = dado01 % dado02

# ORG 2000H
# BEGIN 2000H
	   LHLD 2501
	   LDA 2503
	   MOV B,A
	   MVI C,08

LOOP:	   DAD H
	   MOV A,H
	   SUB B
	   JC AHEAD
	   MOV H,A
	   INR L

AHEAD:	   DCR C
	   JNZ LOOP
	   SHLD 2504
	   HLT
# ORG 2501H
# DB 3BH,24H,1CH