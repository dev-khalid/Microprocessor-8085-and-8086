.MODEL SMALL
.STACK 100
.DATA 
    NOTHING DB ?
.CODE 
    MAIN PROC
        MOV AH,01;TAKING INPUT AND STORING IT INSIDE AL REGISTER
        INT 21H 
        
        ;NEW LINE CODE START    
        MOV AH,02
        MOV DL,AL;WHATEVER INSIDE DL WILL BE PRINTED THAT'S WHY WE ARE MOVING IT TO DL
        INT 21H
        
        MOV AH,4CH
        INT 21H      
            
        
    MAIN ENDP