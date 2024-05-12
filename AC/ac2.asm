load R1,Text 
load R2,1
load R0,0
load R3,0
NextChar:
load RF,[R1]
load R0,61
jmpEQ RF=R0,Incr
addi R1,R1,R2
load R0,0
jmpEQ RF=R0,Ready
jmp NextChar
Incr:
addi R3,R3,R2
addi R1,R1,R2
Ready:
halt
Text: db "zdreanta cel cu ochii de faianta",10
db 0