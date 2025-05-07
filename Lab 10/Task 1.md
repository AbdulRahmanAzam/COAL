```asm

INCLUDE Irvine32.inc

.data
	str1 BYTE '127&j~3#^&*#*#45^',0
	find byte '#'
	foundmsg byte "found #",0
.code
main PROC
	mov edi, offset str1
	mov al, find
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
	exit
main ENDP
Scan_String PROC
	

Scan_String ENDP
END main
```
![image](https://github.com/user-attachments/assets/6ef593d6-ad1c-4b95-901e-3ff7535d8f11)
