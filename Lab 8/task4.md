```asm
INCLUDE Irvine32.inc

.data
var dword 0
hello byte "Hello", 0
world byte "World", 0

.code
main PROC

whileloop:
	cmp var, 10
	jg endwhile

	cmp var, 5
	jge elsee

	mov edx, OFFSET hello
	call WriteString
	jmp done

elsee:
	mov edx, OFFSET world
	call writeString

	done:
	call CrLf
	inc var
	jmp whileloop

endwhile:
exit

main ENDP
END main  
```

![image](https://github.com/user-attachments/assets/a5dca25e-8984-4fd2-a51f-84a3af9e2012)
