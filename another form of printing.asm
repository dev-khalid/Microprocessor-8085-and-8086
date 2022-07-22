.model small
.stack 100
.data 
akash db "hello akash$"
.code 
    mov ax,@data
    mov ds,ax
    
    lea dx,akash;load effective address 
    mov ah,09h ;printing sub-function of interrupts 
    int 21h ;interrupts from the vector table 
    
    mov ah,4ch ;sub-function code for exit 
    int 21h ;actually do it or execute the above code 
    
end