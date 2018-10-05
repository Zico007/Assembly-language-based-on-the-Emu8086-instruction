;Question 15
;Program to find the elevator time. time = distance/velocity 
include 'emu8086.inc'
;final floor
lea si, msg1
call print_string
call scan_num
mov ax, cx   
;initial floor
lea si, msg2
call print_string
call scan_num
sub ax, cx
;height
lea si, msg3
call print_string
call scan_num
mul cx
mov bx, 10
mul bx

mov bx, 15
div bx
;time
lea si, msg5
call print_string
call print_num
ret
msg1 db 'Enter the value for final floor: ',0
msg2 db 13, 10, 'Enter the value for initial floor: ',0
msg3 db 13, 10, 'Enter the value for height of each floor: ',0
msg5 db 13, 10, 'The time taken is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end 