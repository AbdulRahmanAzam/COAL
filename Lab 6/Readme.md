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
