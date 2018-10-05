;Question 11
;Program to find volume of a solid object. v=length x width x height
include 'emu8086.inc'
;length
lea si, msg1
call print_string
call scan_num
mov ax, cx
;width
lea si, msg2
call print_string
call scan_num 
mul cx
;height
lea si, msg3
call print_string
call scan_num
mul cx
lea si, msg4
call print_string
call print_num

ret
msg1 db 'Enter the value for lenght: ',0
msg2 db 13, 10, 'Enter the value for width: ',0
msg3 db 13, 10, 'Enter the value for height: ',0
msg4 db 13, 10, 'The Volume is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end