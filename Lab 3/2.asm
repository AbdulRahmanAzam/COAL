INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	val3 SDWORD -2147483648

.code
main PROC
	mov eax, val3
	call writeInt

	call DumpRegs
	exit

main ENDP
END main
