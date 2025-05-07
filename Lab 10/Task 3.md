```asm
INCLUDE Irvine32.inc

.data
	str1 byte 'first kia kehne hen',0
	str2 byte 'second naa kar jani',0

.code
main PROC
	mov esi, offset str1
	mov edi, offset str2
	mov ecx, lengthof str1
	rep movsb

	mov edx, offset str2
	call writeString

	exit
main ENDP
END main
```
