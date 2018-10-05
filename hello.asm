;Program to print out a couple of strings
include 'emu8086.inc'
ORG 100h
LEA SI, msg1
CALL print_string
LEA SI, msg2
CALL print_string
RET
msg1 DB 13, 10, 'HELLO',0
msg2 DB 13, 10, "HI, WHAT'S YOUR NAME" ,0
DEFINE_PRINT_STRING
END
