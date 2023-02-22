;16 Jan 2023 6:02pm
;Stack practice

;Doing os 05

mov bx,First
call print

call print_nl

mov bx,Second
call print

call print_nl

mov dx, 0x12fe
call print_hex

jmp $ ;infinite loop by jumping here 

%include "print.asm"
%include "print_hex.asm"

First:
    db 'Why you!',0

Second:
    db 'Kono  dio!',0

times 510 - ($-$$) db 0
dw 0xaa55 