```asm
INCLUDE Irvine32.inc

.data
A dword ?
B dword ?
Cc dword ?
D dword ?

msgequal BYTE "All the integers are equal", 0
msgnotequal BYTE "integers are not equal", 0

.code
main PROC
	call ReadInt
	mov A, eax

	call ReadInt
	mov B, eax

	call ReadInt
	mov Cc, eax

	call ReadInt
	mov D, eax


	mov eax, A
	cmp eax, B
	jne NotEqual

	cmp eax, Cc
	jne NotEqual

	cmp eax, D
	jne NotEqual

	mov edx, OFFSET msgequal
	call writeString
	call done

NotEqual:
	mov edx, OFFSET msgnotequal
	call writeString


done:
	exit


main ENDP
END main  
```

![image](https://github.com/user-attachments/assets/79fe9c8e-6e40-4b40-8670-6280adf8d04e)
