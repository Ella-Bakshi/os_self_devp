;16 Jan 2023 6:02pm
;Stack practice

mov ah,0x0e

mov bp,0x8000
mov sp,bp

push "G"
push "W"
push "6"


mov al,[0x7ffe]
int 0x10

mov al,[0x8000]
int 0x10

pop bx
mov al,bl
int 0x10

pop bx
mov al,bl
int 0x10

pop bx
mov al,bl
int 0x10


mov al,[0x8000]
int 0x10

jmp $ ;infinite loop by jumping here 

times 510 - ($-$$) db 0
dw 0xaa55 