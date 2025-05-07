```asm
INCLUDE IRvine32.inc

.data
	brr byte 1,2,3,4,5,6
	multi byte 10

.code
load PROTO, arr:PTR byte, multip:byte

main PROC
	INVOKE load, addr brr, multi
	call print
	exit
main ENDP	

load PROC, arr:PTR byte, multip:byte
	mov esi, arr
	mov edi, arr
	mov ecx, lengthof brr

l1:
	lodsb
	mul multip
	stosb
	loop l1

	ret
load ENDP

print PROC
	mov ecx, lengthof brr
	mov esi, 0
	mov eax, 0

l1:
	movzx eax, brr[esi]
	call writeDec
	call CrLf
	add esi, type brr
	loop l1
	ret
print ENDP
END main
```
