INCLUDE Irvine32.inc

.data
    array1 BYTE 10, 20, 30, 40   
    array2 BYTE 4 DUP(?)         

.code
main PROC
  
    mov esi, OFFSET array1+3     
    mov edi, OFFSET array2       

    ; Copy elements in reverse order
    mov al, [esi]   
    mov [edi], al   
    dec esi         
    inc edi         

    mov al, [esi]   
    mov [edi], al   
    dec esi         
    inc edi         

    mov al, [esi]   
    mov [edi], al   
    dec esi         
    inc edi         

    mov al, [esi]   
    mov [edi], al   

    exit
main ENDP
END main
