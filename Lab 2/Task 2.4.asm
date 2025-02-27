INCLUDE Irvine32.inc

.code
main PROC
	mov eax, 0 
	mov ebx, 0
	mov ecx, 0
	mov edx, 0
	
	;ecx = 110010101101b + 45h-73o + ebx -ecx + 1

	mov ecx, 110010101101b
	add ecx, 45h
	sub ecx, 73o
	add ecx, ebx
	sub ecx, ecx
	add ecx, 1

	mov eax, ecx
	call writeInt
	exit
main ENDP
END main
