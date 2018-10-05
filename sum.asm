include 'emu8086.inc'
ORG 100h
LEA SI, msg1
CALL print_string
CALL scan_num
MOV AX, CX
LEA SI, msg2
CALL print_string
CALL scan_num
ADD AX, CX
LEA SI, msg3
CALL print_string
CALL print_sum
RET
msg1 DB 'Enter the number: ', 0
msg2 DB 13, 10, 'Enter the second number: ', 0
msg3 DB 13, 10, 'The sum of the two numbers is: ', 0
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
END