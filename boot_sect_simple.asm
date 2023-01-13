;infinite loop for fun
loop: 
    jmp loop

;$is current memory address (0) and 
;$$ is the first memory address in given section(0 i think not sure)
times 510-($-$$) db 0
dw 0xAA55