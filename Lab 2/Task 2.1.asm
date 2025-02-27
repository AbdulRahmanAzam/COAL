INCLUDE Irvine32.inc

.code
main PROC
	mov eax, 0 
	mov ebx, 0
	mov ecx, 0
	mov edx, 0
	
	
	mov edx, eax
	add edx, 1
	add edx, ebx
	sub edx, ecx
	add edx, 0Ah
	sub edx, 065o
	add edx, 73


	mov eax, edx
	call writeInt
	exit
main ENDP
END main
