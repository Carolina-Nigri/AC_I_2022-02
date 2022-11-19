// Carolina Morais Nigri - 761400
// Produto (IMUL) de dois dados 
// dado03 = dado01 * dado02

# ORG 2000H
# BEGIN 2000H
	   LHLD 2501
	   XCHG
	   LDA 2503
	   LXI H,0000
	   MVI C,08

LOOP:	   DAD H
	   RAL
	   JNC AHEAD
	   DAD D

AHEAD:	   DCR C
	   JNZ LOOP
	   SHLD 2504
	   HLT
# ORG 2501H
# DB 72H,00H,16H