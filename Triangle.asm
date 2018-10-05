;Question 9
;Program to find the Area of a triangle. A=1/2 (bxh)
include 'emu8086.inc'
;base
lea si, msg1
call print_string
call scan_num
mov ax, cx
;height
lea si, msg2
call print_string
call scan_num 
mul cx
mov bx, 2
div bx
;area
lea si, msg3
call print_string
call print_num

ret
msg1 db 'Enter the value for base of the triangle: ',0
msg2 db 13, 10, 'Enter the value for height of the triangle: ',0
msg3 db 13, 10, 'Area of the triangle is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end