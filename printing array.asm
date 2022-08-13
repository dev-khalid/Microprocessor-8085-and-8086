.model small 
.stack 100
.data 
    arr db "a","b" ; this will only show ascii characters
.code 
main PROC
    mov ax,@data
    mov ds,ax
    
    mov cx,2 ;keeping element count 
    mov si,offset arr
    
    printing:
        mov dx,[si]   
        mov ah,02
        int 21h
        inc si
        dec cx
        loop printing
    mov ah,4ch
    int 21h
    end 
    