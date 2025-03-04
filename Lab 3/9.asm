INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	str BYTE 500 DUP("TEST")

.code
main PROC

	call DumpRegs
	exit

main ENDP
END main
