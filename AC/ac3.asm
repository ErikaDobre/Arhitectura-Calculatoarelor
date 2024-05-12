load R1,Text
load R2,1
load R0,0
NextChar:
load RF,[R1]
addi R1,R1,R2
jmpEQ RF=R0, 
jmp NextChar
Ready:
halt
Text: db "zdreanta cel cu ochii de faianta",10
db 0
