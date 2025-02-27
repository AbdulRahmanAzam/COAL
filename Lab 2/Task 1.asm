1) 
INCLUDE Irvine32.inc

.code
main PROC
	mov eax, 47 + 39 + 60 + 85 + 64 + 054o - 0Ah

	mov ebx, 30 - 9 + 186 - 150

	mov ecx, 101110 + 50Ah + 6710d + 1010001 + 0Fh

	mov edx, 10001101 - 0D83h + 385+10 + 1111101 - 0Eh+0Fh

	mov esi, 101b - 9 + 1A4h - 560o

	call DumpRegs
	exit
main ENDP
END main


OR 

1)
include irvine32.inc
.data
.code

main proc
	mov eax, 47
	add eax, 39
	add eax, 60
	add eax, 85
	add eax, 64
	add eax, 54
	sub eax, 0Ah

	call writeint

	exit
main endp
end main
