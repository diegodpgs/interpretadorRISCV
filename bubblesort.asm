lui x1, 9
lui x11, 0x0001
sw x1, 0(x11)
lui x2, 2
sw x2, 4(x11)
lui x3, 3
sw x3, 8(x11)
lui x4, 2
sw x4, 12(x11)
lui x5, 7
sw x5, 16(x11)
lui x6, 4
sw x6, 20(x11)
lui x7, 0
lui x9, 24

db #REG
db #MEM

FOR1:
	beq x7, x9, ENDFOR1
		lui x8, 0
		FOR2:
			beq x8, x9, ENDFOR2
				

				lw x12, x7(x11)
				lw x13, x8(x11)
				db #RG x12
				db #RG x7
				db -------
				db #RG x13
				db #RG x8
				db ============
				bge x12, x13, ENDIF
					 
					 lw x14, x7(x11)
					 sw x13, x7(x11)
					 sw x14, x8(x11)
					 db troca
					 ENDIF
				ENDIF:
				
				addi x8, x8, 4
				#db #MEM
				#db #RG x7
				#db #RG x8
				#db -----------
				FOR2
				
		ENDFOR2:
		addi x7, x7, 4
		#db #MEM
		FOR1
ENDFOR1: