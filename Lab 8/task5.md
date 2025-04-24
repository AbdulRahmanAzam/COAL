```asm
INCLUDE Irvine32.inc

.data
arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
msgfound byte "found", 0
msgnotfound byte "notfound", 0


.code
main PROC

call ReadInt
mov ecx, lengthof arr
dec ecx
mov esi, type arr

l1:
	movzx ebx, arr[esi]
	cmp eax, ebx
	je found

	add esi, type arr
	loop l1

mov edx, OFFSET msgnotfound
call writeString

jmp done


found:
	mov edx, OFFSET msgfound
	call writeString

done:
exit


main ENDP
END main  
```


![image](https://github.com/user-attachments/assets/d6bb3a8a-d743-4f4c-8a6e-92506b9a2ff4)

![image](https://github.com/user-attachments/assets/0b727764-70b8-4e08-b2b7-97ab9624e7cb)

