
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
name "hello Akash"
org 100h

jmp start
msg: db "Hello Akash!Welcome to Intel$"
start: 
    mov dx,msg
    mov ah,09h
    int 21h
; add your code here

ret




