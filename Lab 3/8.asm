INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	dArray DWORD 50 DUP(?)

.code
main PROC

	call DumpRegs
	exit

main ENDP
END main
