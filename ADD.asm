.MODEL SMALL
.STACK 100
.DATA 
    A DB ?
    B DB ?
.CODE 
    MAIN PROC
        MOV AH,1
        INT 21H
        
        MOV A,AL 
        SUB A,48
        
        INT 21H;RECALLING THE INPUT FUNCTION 
        MOV B,AL
        SUB B,48
        
        MOV BH,A
        ADD BH,B
        ADD BH,48;ADDING ASCII CODE TO CONVERT THIS INTO NUMBER 
        
        MOV AH,2   
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
        
        MOV DL,BH
        
        INT 21H
        
        MOV AH,4CH
        INT 21H
        

                     
        
                
    MAIN ENDP