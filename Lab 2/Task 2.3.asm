INCLUDE Irvine32.inc

.code
main PROC
	mov eax, 0 
	mov ebx, 0
	mov ecx, 0
	mov edx, 0
	
	;ebx = 5ADh – eax + 65d + 73o – 11100101 + 7Bh

	mov ebx, 5ADh
	sub ebx, eax
	add ebx, 65d
	add ebx, 73o
	sub ebx, 11100101b 
	add ebx, 7Bh

	mov eax, ebx
	call writeInt
	exit
main ENDP
END main
