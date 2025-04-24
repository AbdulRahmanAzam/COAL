```asm
INCLUDE Irvine32.inc

.data
intArr sword 0,0,0,150,120,35,-12,66,4,0
msgfound byte "found non integer number", 0
msgnotfound byte "non integer number is not found", 0   

.code
main PROC
mov ecx, lengthof intArr
dec ecx

mov esi, type intArr
mov eax, 0

l1:
	movzx ebx, intArr[esi]
	cmp eax, ebx
	jne found

	add esi, type intArr 
	loop l1

notfound:
	mov edx, OFFSET msgnotfound
	call writeString
	call done
	
found:
	mov edx, OFFSET msgfound
	call writeString
	call CrLf
	movzx eax, intArr[esi]
	call writeInt


done:
	exit

main ENDP
END main  
```
![image](https://github.com/user-attachments/assets/d57ecf64-f804-4179-b24e-eb866e8fd51c)
