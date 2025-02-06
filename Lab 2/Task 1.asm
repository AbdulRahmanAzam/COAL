1)
include irvine32.inc
.data
.code

main proc
	mov eax, 47
	add eax, 39
	add eax, 60
	add eax, 85
	add eax, 64
	add eax, 54
	sub eax, 0Ah

	call writeint

	exit
main endp
end main


2)
