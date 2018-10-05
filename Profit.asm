;Question 1
;Program to find the profit
include 'emu8086.inc'
;Cost Price
lea si, msg1
call print_string
call scan_num
mov ax, cx
;Selling price
lea si, msg2
call print_string
call scan_num 
sub ax, cx
;Profit made
lea si, msg3
call print_string
call print_num
ret
msg1 db 'Enter the cost price of the product: ',0
msg2 db 13, 10, 'Enter the selling price of the product: ',0
msg3 db 13, 10, 'The profit made is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end