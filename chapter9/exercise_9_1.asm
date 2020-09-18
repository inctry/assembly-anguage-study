assume cs:code,ds:data,ss:stack

data segment

data ends

table segment
    db 21 dup ('year summ ne ?? ')
table ends

stack segment
    dw 0,0,0,0,0,0,0,0
stack ends


code segment

start:  

code ends

end start