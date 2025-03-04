INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	val4 WORD 10,20,30 ; 16 bit integer

.code
main PROC
	movsx eax, val4
	call writeInt
			
	call CrLf

	movsx eax, val4+2 ;(1 byte equals 8 bit, so 2 byte equals 16 bit)
	call writeInt

	call CrLf

	movsx eax, val4+4
	call writeInt

	call DumpRegs
	exit

main ENDP
END main
