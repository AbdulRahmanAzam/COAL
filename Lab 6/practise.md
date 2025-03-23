```
000001
0000123
00012345
001234567
0123456789
```

```
INCLUDE Irvine32.inc

.data
    ; No variables needed since we'll work with registers

.code
main PROC
    mov ecx, 5          ; Outer loop counter (5 rows)
    mov ebx, 0          ; Row number (0-4)

outer_loop:
    push ecx            ; Save outer loop counter
    
    ; First part: print leading zeros
    mov eax, 4          ; Total positions for zeros = 4
    sub eax, ebx        ; Subtract row number to get number of zeros
    mov ecx, eax        ; Set loop counter for zeros
    
    zero_loop:
        cmp ecx, 0
        jle skip_zeros    ; If ecx = 0, skip zero printing
        mov al, '0'         ; ASCII character '0'
        call WriteChar      ; Print zero
        loop zero_loop
    
    skip_zeros:
        ; Second part: print numbers
        mov ecx, ebx        ; Get row number
        shl ecx, 1          ; Multiply by 2
        inc ecx            ; Add 1 to get number count (1,3,5,7,9)
        inc ecx
        mov edx, 0          ; Number to print (starts at 0)

    number_loop:
        mov eax, edx        ; Move current number to eax
        add al, 30h         ; Convert to ASCII (add 30h to get '0' to '9')
        call WriteChar      ; Print number
        inc edx             ; Increment number
        loop number_loop
    
    ; Print new line
    call Crlf           ; Carriage return + line feed
    
    inc ebx             ; Increment row number
    pop ecx             ; Restore outer loop counter
    loop outer_loop     ; Continue outer loop
    
    ; Exit program
    exit
main ENDP

END main
```
