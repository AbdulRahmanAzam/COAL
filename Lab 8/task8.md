```asm
INCLUDE Irvine32.inc

.data
arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
msgalphabet BYTE "the given character is alphabet", 0
msgnumber BYTE "the given character is number", 0


.code
main PROC
call ReadChar

cmp eax, 2874
jg alphabet

cmp eax, 561
jle alphabet

; ============== number
mov edx, OFFSET msgnumber
call writeString

call done

alphabet:
	mov edx, OFFSET msgalphabet
	call writeString

done:
	exit
main ENDP
END main  
```

![image](https://github.com/user-attachments/assets/4a08cbab-8071-45f5-889f-00519f8693fb)
![image](https://github.com/user-attachments/assets/4031bfe1-0b8b-40c5-b131-b1e2581f9dc9)

