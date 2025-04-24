```asm
INCLUDE Irvine32.inc

.data
intArr sword 0,0,0,150,120,35,-12,66,4,0
var dword 5
x dword ?

.code
main PROC

mov ecx, lengthof intArr
mov edx, var
inc edx

cmp var, ecx
jge elsee

cmp ecx, edx
jl elsee

mov x, 0
call done

elsee:
mov x, 1

done:
mov eax, x
call writeInt
exit



main ENDP
END main  
```


![image](https://github.com/user-attachments/assets/e29b089a-ce52-43df-9a09-1d670398b4cd)
