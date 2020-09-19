assume cs:code,es:data

data segment
    db 'welcome to masm!'
data ends

code segment

start:  mov ax, 0B800h
        mov ds, ax
        mov si, 0
        mov di,0
        mov ax, data
        mov es, ax
        mov cx, 16
    s:  mov al, es:[di]
        mov ds:[si], al
        inc si
        mov byte ptr ds:[si], 01000010b
        inc si
        inc di
        loop s

        mov ax, 4c00h
        int 21h



code ends

end start