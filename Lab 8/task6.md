dont know why its not working, throwing exception without any purpose

```asm
INCLUDE Irvine32.inc

.data
arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
msgfound byte "found", 0
msgnotfound byte "notfound", 0
temp word 0


.code
main PROC
mov ecx, lengthof arr
dec ecx

mov esi, 0
mov edi, 0

l1:
	mov edi, esi
	push ecx

	mov ecx, lengthof arr
	sub ecx, esi
	l2:
		mov ax, arr[esi]
		mov bx, arr[edi]
		cmp ax, bx
		jl continue

		mov ax, arr[edi]
		mov bx, arr[esi]
		mov arr[edi], bx
		mov arr[esi], ax
		
		continue:
		add edi, type arr
	loop l2
	pop ecx

	add esi, type arr

loop l1

;=============================PRINTING
mov ecx, lengthof arr
mov esi, 0
l3:
	movzx eax, WORD PTR	 arr[esi]
	add esi, type arr

	call writeInt
	call CrLf
	loop l3

call ExitProcess

main ENDP
END main
```

