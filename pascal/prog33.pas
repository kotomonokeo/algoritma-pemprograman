PROGRAM PROG33;
USES WINCRT;
TYPE
    ANGKA = ARRAY[1..20] OF INTEGER;
VAR
   AK       : ANGKA;
   X,Y,NL,T : INTEGER;
   RR       : REAL;
   LAGI     : CHAR;
BEGIN
     CLRSCR;
     X    :=0;
     LAGI :='Y';
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            X := X + 1;
            GOTOXY(10,2);WRITE('NO = [--]');
            GOTOXY(16,2);WRITE(X);
            GOTOXY(35,4);WRITE('DATA NILAI');
            GOTOXY(20,6);WRITE('1. NILAI (1-99) = [--]');
            GOTOXY(25,11);WRITE('INGIN INPUT [Y/T] = [-]');

            REPEAT
                  GOTOXY(39,6);WRITE('--]     ');
                  GOTOXY(39,6);READLN(NL);
            UNTIL (NL>=1) AND (NL<=99);

            AK[X]:=NL;

            REPEAT
                  GOTOXY(46,11);WRITE('-]    ');
                  GOTOXY(46,11);READLN(LAGI);
            UNTIL (LAGI='Y') OR (LAGI='y') OR (LAGI='T') OR (LAGI='t');

       END;
       CLRSCR;
       WRITELN('               DAFTAR NILAI             ');
       WRITELN('               ------------             ');
       WRITELN('        ---------------------------     ');
       WRITELN('             NO         NILAI           ');
       WRITELN('        ---------------------------     ');
       FOR Y:= 1 TO X DO
          BEGIN
               WRITELN('            ',Y:2,'           ',AK[Y]:2);
               T := T + AK[Y];
          END;

       WRITELN('        ---------------------------     ');
       RR:= T/X;
       WRITELN('         TOTAL        = ',T:5);
       WRITELN('         RATA - RATA  = ',RR:5:0);
END.