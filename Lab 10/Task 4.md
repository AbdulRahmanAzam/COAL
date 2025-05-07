```sam
INCLUDE Irvine32.inc

.data
	str1 byte 'abcd',0
	str2 byte 'abc',0
	sss byte 'leetcode',0

	greator byte 'str1 > str2',0
	lesser byte 'str1 < str2',0
.code

Str_Reverse PROTO, arr:PTR BYTE, len:DWORD
main PROC
	INVOKE Str_Reverse, ADDR sss, lengthof sss
	mov edx, offset sss
	call writeString
	exit
main ENDP

Str_Reverse PROC, arr:PTR BYTE, len:DWORD
	mov ecx, len
	shr ecx, 1
	mov esi, arr
	mov edi, arr
	add edi, len
	sub edi, 2

l1:
	mov al, [edi]
	mov bl, [esi]
	mov [edi], bl
	mov [esi], al
	inc esi
	dec edi
	loop l1

	ret
Str_Reverse ENDP

END main
```
