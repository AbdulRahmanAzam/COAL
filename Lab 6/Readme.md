## Content
[Q1](#Q1)

[Q2](#Q2)

[Q3](#Q3)

[Q4](#Q4)

[Q5](#Q5)

[Q6](#Q6)

[Q7](#Q7)


### Q1
```asm
INCLUDE Irvine32.inc

.data
	fib1 DWORD 0
	fib2 DWORD 1
	count DWORD 10

.code
main PROC
	mov eax, fib1
	call writeInt
	call CrLf

	mov eax, fib2
	call writeInt
	call CrLf

	mov ecx, count
	sub ecx, 2

fibo_loop:
	mov eax, fib1
	add eax, fib2
	call writeInt
	call CrlF

	mov edx, fib2
	mov fib1, edx
	mov fib2, eax

	loop fibo_loop


	call ExitProcess
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/b85a5b6c-e746-4074-95ef-79bd4f1e1dd9)


### Q2
#### i
```asm
INCLUDE Irvine32.inc

.data
	space BYTE " ", 0

.code
main PROC
	mov eax, 1 ;print
	mov ecx, 4 ;counter
	mov ebx, 1
	mov edx, OFFSET space ; edx used for string

l1:
	push ecx
	mov ecx, ebx

	l2:
		call writeInt
		call writeString
	loop l2

	call CrLf
	inc ebx
	pop ecx
loop l1

	call ExitProcess
main ENDP
END main
```

![image](https://github.com/user-attachments/assets/1baa3261-2d70-4aa3-985a-8c8c190883ba)


#### ii
```asm
INCLUDE Irvine32.inc

.data
	space BYTE " ", 0

.code
main PROC
	mov eax, 1 ;print
	mov ecx, 4 ;counter
	mov ebx, 4
	mov edx, OFFSET space ; edx used for string

l1:
	push ecx
	mov ecx, ebx

	l2:
		call writeInt
		call writeString
	loop l2

	call CrLf
	dec ebx
	pop ecx
loop l1

	call ExitProcess
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/81493120-7dab-4b67-93da-f4094a60e085)


#### iii
```asm
INCLUDE Irvine32.inc

.data
	space BYTE " ", 0

.code
main PROC
	mov ecx, 4
	mov ebx, 4
	mov edx, 4

l1:
	push ecx
	mov ecx, ebx
	mov eax, edx

	l2:
		call writeInt
		dec eax
	loop l2

	call CrLf
	dec ebx
	pop ecx

loop l1

	call ExitProcess
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/64e627ae-00c2-4471-b269-79457d393a8a)


#### iv
 ```asm
INCLUDE Irvine32.inc

.data
	space BYTE " ", 0

.code
main PROC
	mov ecx, 4
	mov ebx, 4
	mov edx, 1

l1:
	push ecx
	mov ecx, ebx
	mov eax, edx

	l2:
		call writeInt
		inc eax
	loop l2

	call CrLf
	dec ebx
	pop ecx

loop l1

	call ExitProcess
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/7c61da1e-8696-4ca0-a59e-11fcf19291c9)



### 3
```
INCLUDE Irvine32.inc



.data
	num = 1
	IDp BYTE "Enter id for employee: ", 0
	namep BYTE "Enter name: ", 0
	yearp BYTE "Enter year of birth: ", 0
	salaryp BYTE "Enter salary: ", 0
	result BYTE "Total salary of the employees: ", 0


	Space BYTE " ",0
	employeenum BYTE 0

	IDs DWORD num DUP(?)
	names BYTE num* 20 DUP(?) ; 20 characters per name
	years DWORD num DUP(?)
	salarys DWORD num DUP(?)

.code
main PROC
	mov ecx, num ; counter
	mov esi, 0 ; array index
	mov employeenum, 1

	InputLoop:
		; employee number
		mov eax, 0
		mov al, employeenum
		call WriteDec

		; employee id
		mov edx, OFFSET IDp
		call writeString
		call ReadDec
		mov IDs[esi * 4], eax

		push ecx

		; employee name
		mov edx, OFFSET namep
		call writeString
		mov edx, OFFSET names
		mov ebx, esi
		imul ebx, 20
		add edx, ebx
		mov ecx, 20   ; max length of characters
		call ReadString
		
		pop ecx

		; birthday
		mov edx, OFFSET yearp
		call writeString
		call ReadDec
		mov years[esi*4], eax

	
		; salary
		mov edx, OFFSET salaryp
		call WriteString
		call ReadDec
		mov salarys[esi*4], eax

		call CrLf
		inc employeenum
		inc esi
		dec ecx
		jnz InputLoop


	mov ecx, num
	mov esi, 0
	mov eax, 0

	ResultLoop:
		add eax, salarys[esi*4]
		inc esi
		loop ResultLoop


	mov edx, OFFSET result
	call WriteString
	call WriteDec
	call CrLf


exit
main ENDP
END main
```


### 4


### 6
![image](https://github.com/user-attachments/assets/8519503e-28ee-44e6-8b15-1c77590224ea)

```
INCLUDE Irvine32.inc

.data
	array DWORD 8,5,1,2,6
	arraysize DWORD 5

.code
main PROC
	call PrintArray

	call BubbleSort
exit
main ENDP

BubbleSort PROC
	mov esi, OFFSET array
	mov ecx, arraysize
	dec ecx

	outerLoop:
		push ecx
		mov esi, OFFSET array

		innerLoop:
			mov eax, [esi]
			cmp eax, [esi+4]
			jle NoSwap
			
			;else swapping them
			xchg eax, [esi+4]
			mov [esi], eax

			NoSwap:
				add esi, 4

			loop innerLoop

		pop ecx
		loop outerLoop

	call PrintArray

ret
BubbleSort ENDP



PrintArray PROC
	pushad ; save all registers

	mov esi, OFFSET array
	mov ecx, arraysize
l1:
	mov eax, [esi]
	call WriteDec

	mov al, ' '
	call writeChar

	add esi, 4
	
	loop l1

call CrLf
popad
ret
PrintArray ENDP

END main
```
