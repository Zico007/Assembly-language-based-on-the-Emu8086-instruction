include 'emu8086.inc'
;Number that are divisible by 5
mov ax, 5
lea si, msg1
call print_string
call scan_num


multiple:
lea si, msg2
call print_string
call print_num
add ax, 5
cmp ax, cx

jle multiple 
jmp stop

stop:
ret
msg1 db 'input a number: ',0
msg2 db 13, 10, 'The number that is divisible by 5 is: ',0
define_print_string
define_print_num
define_scan_num
define_print_num_uns
end
