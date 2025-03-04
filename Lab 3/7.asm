INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	wArray WORD 10,20,30

.code
main PROC
	movsx eax, wArray
	call writeInt

	call CrLf

	movsx eax, wArray+2
	call writeInt

	call CrLf

	movsx eax, wArray+4
	call writeInt

	call CrLf

	call DumpRegs
	exit

main ENDP
END main
