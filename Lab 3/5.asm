INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	a BYTE 11h
	b BYTE 10h
	_c BYTE 30h
	d BYTE 40h

.code
main PROC
	; (a + b)
	mov al, a
	add al, b

	; (a-b)
	mov bl, a
	sub bl, b

	; (a+b) - (a-b)
	sub al, bl

	; (total) + c
	add al, _c

	; (total) + d
	add al, d

	movzx ebx, al

	xor eax, eax ; cleaning register, was giving error
	mov eax, ebx
	call writeInt
	call CrLf
	
	call DumpRegs
	exit

main ENDP
END main
