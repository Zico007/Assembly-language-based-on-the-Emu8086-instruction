;Question 12
;Program to find the frequency of pendulum's motion. f=1/time 
include 'emu8086.inc'
lea si, msg1
call print_string
mov ax, 1
;time
lea si, msg2
call print_string
call scan_num
div cx
;frequency
lea si, msg3
call print_string
call print_num
ret
msg1 db '',0
msg2 db 13, 10, 'Enter the value for time taken: ',0
msg3 db 13, 10, 'The frequency is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end