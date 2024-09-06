ORG 0000H
MOV R2,#10H
MOV  dptr,#CODE
BACK:
MOVc A,@a+dptr

MOV P1,A
mov A,#00h
LCALL DELAY
INC dptr
DJNZ  R2,BACK
ORG 0050H

code:
DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH
ORG 0030H
mov r3,3d
DELAY:
mov tmod,#00000001B
hi:
mov tl0,00h
mov th0,00h

setb tr0
b1:jb tf0 ,b1
hh:djnz r3,hi


RET
