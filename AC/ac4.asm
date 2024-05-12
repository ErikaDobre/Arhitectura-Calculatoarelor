load R1, Text
load R2, 1d
load R3, 0xB0
load R0, 0
load R4,2d
NextChar:
load RF,[R1]
store RF,[R3]
addi R1,R1,R2
addi R3,R3,R2
jmpEQ RF=R0, Reset_var
jmp NextChar
Ready:
halt
Reset_var:
load R3,0xB0
jmp Afisare
Afisare:
load RF,[R3]
addi R3,R3,R4
jmpEQ RF=R0,Ready
jmp Afisare
Text:
db "zdreanta cel cu ochii de fai"
db 0h