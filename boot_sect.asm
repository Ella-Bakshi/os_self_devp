;13/01/2023 10:00am new boot sector
;infinite loop for fun
;loop: 
;    jmp loop

;$is current memory address (0) and 
;$$ is the first memory address in given section(0 i think not sure)
;times 510-($-$$) db 0
;dw 0xAA55


;13/01/2023 12:41pm new boot sector 
mov ah,0x0e ; function to tell cpu to write stuff after this in tty mode
mov al,"H" ;to put h in lower of extended pair a
int 0x10 ;to make intrupt to video services of cpu
mov al,"e"
int 0x10 
mov al,"l"
int 0x10 
int 0x10 
mov al,"o"
int 0x10 
mov al," "
int 0x10 
mov al,"W"
int 0x10
mov al,"o"
int 0x10
mov al,"r"
int 0x10
mov al,"l"
int 0x10
mov al,"d"
int 0x10

jmp $ ;infinite loop by jumping here 

times 510 - ($-$$) db 0
dw 0xaa55 