```asm
INCLUDE Irvine32.inc

.data
arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
msgalphabet BYTE "the given character is alphabet", 0
msgnumber BYTE "the given character is number", 0


.code
main PROC
call ReadChar
call writeChar
call CrLf
movzx eax, al
call writeInt
call CrLf

cmp eax, 'A'
jl number

	mov edx, OFFSET msgalphabet
	call writeString
	
call done

number:
; ============== number
mov edx, OFFSET msgnumber
call writeString


done:
	exit
main ENDP
END main  
```
![image](https://github.com/user-attachments/assets/de736e80-0512-4c1b-bcf2-b6e02adcd20f)

![image](https://github.com/user-attachments/assets/3c40c2e9-88c6-4518-b606-100026d58577)

