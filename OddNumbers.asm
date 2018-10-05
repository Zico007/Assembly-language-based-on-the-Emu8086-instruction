;Question 5
;Program to display odd number from 1 to 40
include 'emu8086.inc'
mov ax, 1
odd:
lea si, msg1
call print_string
call print_num
add ax, 2
cmp ax, 40
jl odd
jmp stop
stop:
ret
msg1 db 13, 10, 'The odd number are: ',0
define_print_string
define_print_num 
define_print_num_uns
end