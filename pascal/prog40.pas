PROGRAM PROG40;
USES WINCRT;

PROCEDURE HASIL(VAR A,B : INTEGER);
VAR
   C : INTEGER;
BEGIN
     C := A+B;
     GOTOXY(30,7);WRITELN('HASIL TOTAL A + B = ',C);
END;

VAR
   A,B : INTEGER;
BEGIN
     CLRSCR;
        GOTOXY(30,5);WRITE('MASUKAN NILAI A = [--]');
        GOTOXY(30,6);WRITE('MASUKAN NILAI B = [--]');
        REPEAT
           GOTOXY(49,5);WRITE('--]  ');
           GOTOXY(49,5);READLN(A);
        UNTIL (A>=1) AND (A<=99);

        REPEAT
           GOTOXY(49,6);WRITE('--]  ');
           GOTOXY(49,6);READLN(B);
        UNTIL (A>=1) AND (A<=99);

        HASIL(A,B);
END.