;Question 8
;Program to find the wavelent of a sound. wavelength=wave velocity/frequency
include 'emu8086.inc'
;wave velocity
lea si, msg1
call print_string
call scan_num
mov ax, cx
;frequency
lea si, msg2
call print_string
call scan_num 
div cx
;wavelength
lea si, msg3
call print_string
call print_num
ret
msg1 db 'Enter the value for wave velocity: ',0
msg2 db 13, 10, 'Enter the value for frequency: ',0
msg3 db 13, 10, 'The wavelength of the sound is: ',0
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end