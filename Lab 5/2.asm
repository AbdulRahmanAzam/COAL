INCLUDE Irvine32.inc

.data
    ; BYTE array (1-byte elements)
    originalArray BYTE 61, 43, 11, 52, 25 
    sortedArray   BYTE 5 DUP(0)           

.code
main PROC
    mov al, originalArray       ; (61)
    mov bl, originalArray+1     ;  (43)
    mov cl, originalArray+2     ; (11)
    mov dl, originalArray+3     ;  (52)
    mov ah, originalArray+4     ; (25)


    ; Step 1: Compare AL and BL
    cmp al, bl
    jg swap_al_bl
    jmp step2
swap_al_bl:
    xchg al, bl

step2:
    cmp bl, cl
    jg swap_bl_cl
    jmp step3
swap_bl_cl:
    xchg bl, cl

step3:
    cmp cl, dl
    jg swap_cl_dl
    jmp step4
swap_cl_dl:
    xchg cl, dl

step4:
    cmp dl, ah
    jg swap_dl_ah
    jmp step5
swap_dl_ah:
    xchg dl, ah

step5:
    cmp al, bl
    jg swap_al_bl2
    jmp step6
swap_al_bl2:
    xchg al, bl

step6:
    cmp bl, cl
    jg swap_bl_cl2
    jmp step7
swap_bl_cl2:
    xchg bl, cl

step7:
    cmp cl, dl
    jg swap_cl_dl2
    jmp step8
swap_cl_dl2:
    xchg cl, dl

step8:
    cmp al, bl
    jg swap_al_bl3
    jmp step9
swap_al_bl3:
    xchg al, bl

step9:
    cmp bl, cl
    jg swap_bl_cl3
    jmp done
swap_bl_cl3:
    xchg bl, cl

done:
    ; Store sorted values
    mov sortedArray, al
    mov sortedArray+1, bl
    mov sortedArray+2, cl
    mov sortedArray+3, dl
    mov sortedArray+4, ah

    exit
main ENDP
END main
