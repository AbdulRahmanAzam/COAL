INCLUDE Irvine32.inc

.data
    arrayD DWORD 100, 20, 30, 10, 5 
    result DWORD ?                 

.code
main PROC
    mov esi, OFFSET arrayD  
    mov eax, [esi]          

    
    sub eax, [esi]          
    add esi, 4              
    sub eax, [esi]          
    add esi, 4              
    sub eax, [esi]          
    add esi, 4              
    sub eax, [esi]          

    mov result, eax         

    exit
main ENDP
END main
