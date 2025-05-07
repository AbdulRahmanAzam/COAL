```asm
INCLUDE Irvine32.inc

.data
	str1 BYTE '127&j~3#^&*#*#45^',0
	find byte '#'
	foundmsg byte "found #",0
.code

Scan_String PROTO arr:PTR BYTE, w:BYTE

main PROC
	INVOKE Scan_String, ADDR str1, '#'
	
	exit
main ENDP

Scan_String PROC arr:PTR BYTE, f:BYTE
push edi
	mov edi, arr
	mov al, f
	mov ecx, lengthof str1
	
	cld
	repne scasb
	jnz endd

	mov eax, lengthof str1
	sub eax, ecx
	dec eax

	mov edx, offset foundmsg
	call writeString

	call writeDec
	endd:
	pop edi
	ret

Scan_String ENDP
END main
```
