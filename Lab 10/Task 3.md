```asm
INCLUDE Irvine32.inc

.data
	str1 byte 'abcd',0
	str2 byte 'abc',0

	greator byte 'str1 > str2',0
	lesser byte 'str1 < str2',0
.code
main PROC
	mov esi, offset str1
	mov edi, offset str2
	mov ecx, lengthof str1
	cld
	repe cmpsb
	ja great     ;str1 > str2

	mov edx, offset lesser
	call writeString
	call endd

	great:
	mov edx, offset greator
	call writeString
	
	endd:
	exit
main ENDP
END main
```
