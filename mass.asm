;Program to calulate the mass of air in an automobile tire
;mass = pressure x volume / 0.37 ( temperature + 460 )
include 'emu8086.inc'
ORG 100h
LEA SI, msg1
CALL print_string
CALL scan_num  
MOV AX,CX  
ADD AX, 460
MOV CX, 37
MUL CX
MOV BX,AX
LEA SI, msg2
CALL print_string
CALL scan_num 
MOV AX, CX
LEA SI, msg3
CALL print_string
CALL scan_num 
MUL CX
MOV CX, 100
MUL CX
DIV BX
LEA SI, msg4
CALL print_string
CALL print_num 
RET
msg1 DB 10, 13, 'Enter the pressure of the tire: ',0
msg2 DB 10, 13, 'Enter the volume of the tire: ',0
msg3 DB 10, 13, 'Enter the temperature of the tire: ',0
msg4 DB 10, 13, 'The mass of air in the tire is :',0
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
END