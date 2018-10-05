;Program to calculate the mass concentration of a chemical compound
include 'emu8086.inc' ;preprocessor header
ORG 100h
LEA SI, msg1
CALL print_string ;Output
CALL scan_num ;input
MOV AX,CX ;Mass
LEA SI,msg2
CALL print_string ;output
CALL scan_num ;input for number of moles
MOV BX,CX ;Number of moles
DIV BX ;Mass concentration = Mass / Number of moles
LEA SI,msg3
CALL print_string
CALL print_num
RET
msg1 DB 13 , 10, 'Enter the mass of the chemical compound: ',0
msg2 DB 13, 10, 'Enter the Number of Moles of the chemical compound: ',0
msg3 DB 13, 10, 'The Mass concentration of the chemical compound is: ',0
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
END
