include 'emu8086.inc'
ORG 100h
MOV AX,1  ;ax = i
LEA SI,msg1
CALL print_string
CALL scan_num
CMP CX,AX ;cx = n
JLE label
label:
    ADD AX,1
    MUL AX
    CALL print_num
    MOV BX, AX ;bx = j
    MOV AX,0
    ADD AX,BX ; AX = sum
    JMP exit
exit:
CALL print_num
RET
msg1 DB 13, 10, 'Enter your number',0
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 
DEFINE_PRINT_STRING
DEFINE_SCAN_NUM
END