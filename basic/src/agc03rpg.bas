

100 DEFINT a-z
110 e=100:a=30:d=15:x=5:f=0
120 ee=90:aen=20:den=10:ex=7:en=0:a$=""
130 DIM em(3): em(0)=-1:em(1)=1:em(2)=1:em(3)=-1
140 DEF FNr(m)=m-3+(rnd*6)

200 MODE 1:PRINT"RPG GAME" 
210 GOSUB 10000: RANDOMIZE TIME

300 WHILE 1:CLS
310 PRINT "PLATER ["e"](a"a")(d"d")"
320 PRINT "ENEMY ["ee"](a"aen")(d"den")"

330 LOCATE x,6: PRINT CHR$(249)
340 LOCATE ex,6: PRINT CHR$(225)
350 PRINT STRING$(10,143): PRINT STRING$(10,127)

400 INPUT "ACTION",a$
410 IF a$="o" THEN GOSUB 1000: GOTO 500
420 IF a$="p" THEN GOSUB 1100: GOTO 500
430 IF a$="d" THEN GOSUB 1400: GOTO 500
440 GOTO 400

500 IF ex=x+1 THEN GOSUB 1200 ELSE GOSUB 1300

900 GOSUB 10000:WEND

1000 'player moves left
1010 x=x-1: IF x=0 THEN x=1
1020 RETURN

1100 'player moves right and as if it makes contact
1110 x=x+1: IF x=ex THEN x=x-1:f=FNr(a):ee=ee-f: PRINT "player as enemy with force = "f
1120 RETURN

1200 'enemy attacks
1210 f=FNr(aen): e=e-f: PRINT "the enemy attacks with force = "f
1220 RETURN

1300 'enemy moves
1310 ex = ex +em(en): en=en+1: IF en=4 THEN en=0
1320 RETURN

1400 'player reloads
1410 f=FNr(d):e=e+f: PRINT "the player reloads = "f
1420 RETURN

10000 ' press enter to continue
10010 PRINT"PRESS ENTER TO START"
10020 INPUT"",a$
10030 RETURN
