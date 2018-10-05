;Question 10
;Program to find the acceleration. A = v-u/t 
include 'emu8086.inc'
;final
lea si, msg1
call print_string
call scan_num
mov ax, cx
;initial
lea si, msg2
call print_string
call scan_num 
sub ax, cx
;time
lea si, msg3
call print_string
call scan_num
div cx
lea si, msg4
call print_string
call print_num
ret
msg1 db 'Enter the value for final velocity: ',0
msg2 db 13, 10, 'Enter the value for initial velocity: ',0
msg3 db 13, 10, 'Enter the value for time taken: ',0
msg4 db 13, 10, 'The acceleration is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end