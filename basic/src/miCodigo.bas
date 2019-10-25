
1 '  
1 ' The Twilight City
1 ' by chromePunk
1 ' October 2019
1 '


1 ' INITIALIZE 
100 DEFINT a-z
110 e=100:attack=30:defense=15
120 ee=90:attacken=20:defenseen=10

200 MODE 1:PRINT"RPG GAME"
210 PRINT"PRESS ENTER TO START"
220 INPUT"",a$

1 ' PRINT GAME STATUS
300 WHILE 1:CLS
310 PRINT "PLATER ["e"](a"attack")(d"defense")"
320 PRINT "ENEMY ["ee"](a"attacken")(d"defenseen")"

1 'PLAYER ACTIONS
400 INPUT "ACTION",a$
410 IF a$="A" THEN ee=ee - attack: GOTO 500
420 IF a$="D" THEN e=e + defense: GOTO 500
430 GOTO 400

1 'ENEMY ACTIONS'
500 IF RND>0.25 THEN e=e-attacken:GOTO 900
510 ee=ee + defenseen



900 WEND
