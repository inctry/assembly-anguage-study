assume cs:codeesg

codeesg segment 
    
    mov ax, 2000H
    mov ss, ax
    mov sp, 0
    add sp, 10
    pop ax
    pop bx
    push bx
    pop bx

    mov ax, 4c00H
    int 21H

codeesg ends

end