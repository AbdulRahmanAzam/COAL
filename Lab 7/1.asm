include irvine32.inc
.data
	arr WORD 1,2,3,4,5,6,7,8
	brr WORD 8 DUP(0)
.code
main proc
	
	mov ecx,lengthof arr
	mov esi,0

	L1:
	push arr[esi]
	add esi, type arr
	loop L1
	
	mov ecx,lengthof arr
	mov esi,sizeof arr - type arr 

	L2:
	pop ax
	mov brr[esi],ax
	sub esi, type brr
	loop L2
   
   mov ecx,lengthof arr
   mov esi,0
   L3:
   movzx eax,brr[esi]
   call writedec
   call crlf
   add esi, type arr
   loop L3

   exit
main endp
end main
