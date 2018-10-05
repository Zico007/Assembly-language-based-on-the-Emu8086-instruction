;Question 14
;Program to find velocity. Velocity =distance/time
include 'emu8086.inc'
;distance travelled
lea si, msg1
call print_string
call scan_num
mov ax, cx
;time taken
lea si, msg2
call print_string
call scan_num 
div cx
;velocity
lea si, msg3
call print_string
call print_num
ret
msg1 db 'Enter the value for distance: ',0
msg2 db 13, 10, 'Enter the value for time taken: ',0
msg3 db 13, 10, 'The velocity is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end