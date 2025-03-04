INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	favColor BYTE "Black", 0 ; This 0 means null terminated string
	A WORD 12
	B WORD 2
	;C WORD 13 ; why C is giving???
	D WORD 8
	E WORD 14
.code
main PROC
	movsx eax, A
	call writeInt
	call CrLf

	movsx eax, B
	call writeInt
	call CrLf

	;movsx eax, C ; why C is givning error?

	movsx eax, D
	call writeInt
	call CrLf

	movsx eax, E
	call writeInt
	call CrLf

	
	call DumpRegs
	exit

main ENDP
END main
