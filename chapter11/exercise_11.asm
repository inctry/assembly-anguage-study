assume cs:codesg

datasg segment
    db "Begginer's All-purpose Symbolic Instruction Code.",0
datasg ends

codesg segment
    begin:  mov ax, datasg
            mov ds,ax
            mov si, 0
            mov cx,1
            call letterc
            mov ax, 4c00h
            int 21h
    
    letterc:    push cx
                push si

            s:  cmp byte ptr ds:[si], 0
                je nxt
                
                and byte ptr ds:[si], 11011111b
                inc si
                inc cx
                loop s
            nxt:pop si
                pop cx
                ret
                

codesg ends
end begin

        