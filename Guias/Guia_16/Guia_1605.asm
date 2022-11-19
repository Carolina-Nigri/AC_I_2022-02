// Carolina Morais Nigri - 761400
// Converter um valor em BCD  para hexadecimal
// dado02 = HI (dado01) * 10 + LOW (dado02)

# ORG 2000H
# BEGIN 2000H
	   LXI H,2050
	   MOV A,M
	   ADD A
	   MOV B,A
	   ADD A
	   ADD A
	   ADD B
	   INX H
	   ADD M
	   INX H
	   MOV M,A
	   HLT
# ORG 2501H
# DB 4BH,32H,0AH