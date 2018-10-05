;Question 11
;Program to find force due to gravity. f=mg
include 'emu8086.inc'
;mass
lea si, msg1
call print_string
call scan_num
mov ax, cx
;gravity
lea si, msg2
call print_string
call scan_num 
mul cx
;force
lea si, msg3
call print_string
call print_num
ret
msg1 db 'Enter the value for mass in gram: ',0
msg2 db 13, 10, 'Enter the value for gravity: ',0
msg3 db 13, 10, 'The Force is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end