// Carolina Morais Nigri - 761400
// Quociente inteiro (IDIV) entre dois dados 
// dado03 = dado01 / dado02

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
# DB 20BH,60H,4AH