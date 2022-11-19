// Carolina Morais Nigri - 761400
// Maior valor de um arranjo

# BEGIN 0000H
START:	   MVI D,05

W:	   LXI H,C020
	   MVI C,05

X:	   MOV A,M
	   INX H
	   MOV B,M
	   CMP B
	   JM Y
	   MOV M,A
	   DCX H
	   MOV M,B
	   INX H

Y:	   DCR C
	   JNZ X
	   DCR D
	   JNZ W
	   HLT
# ORG C020
# DB 3FH,1AH,7H,76H,13H,2DH