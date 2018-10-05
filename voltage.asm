;Question 2
;Program to find the voltage V=IR
include 'emu8086.inc'
;Current
lea si, msg1
call print_string
call scan_num
mov ax, cx
;Resistor
lea si, msg2
call print_string
call scan_num 
mul cx
;Voltage
lea si, msg3
call print_string
call print_num
ret
msg1 db 'Enter the value for current: ',0
msg2 db 13, 10, 'Enter the value for resistance: ',0
msg3 db 13, 10, 'The Voltage is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end