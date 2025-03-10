INCLUDE Irvine32.inc

.data
    arrayB BYTE 10, 20, 30        
    arrayW WORD 150, 250, 350     
    arrayD DWORD 600, 1200, 1800  

    SUM1 DWORD ?   
    SUM2 DWORD ?   
    SUM3 DWORD ?   

.code
main PROC
    ; ---- Compute SUM1 ----
    movzx eax, arrayB       
    movzx ebx, arrayW       
    add eax, ebx            

    add eax, arrayD         
    mov SUM1, eax           

    ; ---- Compute SUM2 ----
    movzx eax, arrayB+1     
    movzx ebx, arrayW+2     
    add eax, ebx            

    add eax, arrayD+4       
    mov SUM2, eax           

    ; ---- Compute SUM3 ----
    movzx eax, arrayB+2     
    movzx ebx, arrayW+4     
    add eax, ebx            

    add eax, arrayD+8       
    mov SUM3, eax           

    exit
main ENDP
END main
