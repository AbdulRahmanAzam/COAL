.data
    val1 SDWORD 8000      

.code
main PROC
    mov eax, val1        
    add eax, 1            

    jc CarryFlagSet       
    js SignFlagSet        

    exit
CarryFlagSet
    exit
SignFlagSet:
    exit
main ENDP
END main
