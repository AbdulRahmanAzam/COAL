### Q1) What errors are present in the following?
```
 MOV AX 3d     -> comma missing
 MOV 23, AX    -> register cannot stored in number
 MOV CX, CH    -> Correct
 MOVE AX, 1h   -> this must be MOV not MOVE
 ADD 2, CX     -> number cannot be used to store the value of addition
 ADD 3, 6      -> number cannot be used to store the value of addition
 INC AX, 2     -> cannot be increment by any other must be (INC AX)
```

### Q2 
```
.code
main PROC
; ABDUL RAHMAN AZAM

mov eax, 'A'
mov ebx, 'B'
mov ecx, 'D'
```

![image](https://github.com/user-attachments/assets/42b13988-7075-4570-b417-e0a80c2131eb)

### Q3
```
INCLUDE Irvine32.inc

.data
varB byte +10
varW word -150
varD dword 600

.code
main PROC

movzx eax, varB ; eax is big, BYTE is small
movsx ebx, varW ; varB is negative so using signed move
mov ecx, varD ; both are of same size

call DumpRegs
exit
main ENDP
END main
```

![image](https://github.com/user-attachments/assets/8c2bdac8-816b-4c37-abba-4b3fd039370b)


### Q4
```
main PROC
mov eax, 89
add eax, 75Fh
sub eax, 46o
sub eax, 28
add eax, 1101b
```
![image](https://github.com/user-attachments/assets/a495c74c-2c2b-419b-9a08-465183fe398c)


```
INCLUDE Irvine32.inc

.data
	val1 DWORD 25h
	val2 BYTE 36o
	val3 WORD 20d

.code
main PROC

	mov eax, val1
	movzx ebx, val2
	add eax, ebx

	sub eax, 654h

	movzx ebx, val3
	add eax, ebx

	call DumpRegs		
call ExitProcess
main ENDP
END main
```

![image](https://github.com/user-attachments/assets/69cfdaa7-2af6-4f20-81a6-4ede1574bee6)


### Q6
```
INCLUDE Irvine32.inc

.data
	SecondsInDay = 24 * 60 * 60

.code
main PROC
	mov eax, SecondsInDay

	call WriteInt
	call CrLf

call ExitProcess
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/6c052035-9332-4c4c-b5e1-9a20a3941e33)


### Q7
```

```

