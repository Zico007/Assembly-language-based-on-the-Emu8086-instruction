;Question 6
;Program to display even number from 1 to 100
include 'emu8086.inc'
mov ax, 2
even:
lea si, msg1
call print_string
call print_num
add ax, 2
cmp ax, 100
jl even
jmp stop
stop:
ret
msg1 db 13, 10, 'The even number are: ',0
define_print_string
define_print_num 
define_print_num_uns
end