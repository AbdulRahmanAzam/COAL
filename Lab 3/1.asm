INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib  ; Ensure Irvine32.lib is included

.data
    val1 SWORD ?
    val2 SBYTE -11

.code
main PROC
    movsx eax, val1
    call writeDec

    call CrLf

    movsx eax, val2
    call writeInt

    call DumpRegs
    exit

main ENDP
END main
