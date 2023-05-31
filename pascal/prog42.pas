PROGRAM PROG42;
USES WINCRT;

PROCEDURE MENU(VAR PIL : CHAR);
BEGIN
     CLRSCR;
     GOTOXY(35,4);WRITE('MENU HITUNG');
     GOTOXY(20,6);WRITE('1. TAMBAH');
     GOTOXY(20,7);WRITE('2. KALI');
     GOTOXY(20,8);WRITE('3. BAGI');
     GOTOXY(20,9);WRITE('4. KELUAR');
     GOTOXY(25,12);WRITE('PILIH [1-4] = [-]');

     REPEAT
        GOTOXY(40,12);WRITE('-]    ');
        GOTOXY(40,12);READLN(PIL);
     UNTIL (PIL='1') OR (PIL='2') OR (PIL='3') OR (PIL='4');
END;

PROCEDURE TAMBAH;
VAR
   A,B,C : INTEGER;
BEGIN
     CLRSCR;
     GOTOXY(35,5);WRITE('MASUKAN NILAI A = [---]');
     GOTOXY(35,6);WRITE('MASUKAN NILAI B = [---]');

     REPEAT
           GOTOXY(54,5);WRITE('---]  ');
           GOTOXY(54,5);READLN(A);
     UNTIL (A>=1) AND (A<=999);

     REPEAT
           GOTOXY(54,6);WRITE('---]  ');
           GOTOXY(54,6);READLN(B);
     UNTIL (B>=1) AND (B<=999);

     C:=A+B;
     GOTOXY(35,7);WRITE('TOTAL NILAI A+B = ',C);
     GOTOXY(35,8);WRITE('TEKAN ENTER UNTUK KEMBALI....');
     READLN
END;

PROCEDURE KALI;
VAR
   X,Y,Z : INTEGER;
BEGIN
     CLRSCR;
     GOTOXY(35,5);WRITE('MASUKAN NILAI X = [---]');
     GOTOXY(35,6);WRITE('MASUKAN NILAI Y = [---]');
     
     REPEAT
           GOTOXY(54,5);WRITE('---]  ');
           GOTOXY(54,5);READLN(X);
     UNTIL (X>=1) AND (X<=999);

     REPEAT
           GOTOXY(54,6);WRITE('---]  ');
           GOTOXY(54,6);READLN(Y);
     UNTIL (Y>=1) AND (Y<=999);

     Z:=X*Y;
     GOTOXY(35,7);WRITE('TOTAL NILAI X*Y = ',Z);
     GOTOXY(35,8);WRITE('TEKAN ENTER UNTUK KEMBALI....');
     READLN
END;


PROCEDURE BAGI;
VAR
   R,M : INTEGER;
   O   : REAL;
BEGIN
     CLRSCR;
     GOTOXY(35,5);WRITE('MASUKAN NILAI R = [---]');
     GOTOXY(35,6);WRITE('MASUKAN NILAI M = [---]');
     
     REPEAT
           GOTOXY(54,5);WRITE('---]  ');
           GOTOXY(54,5);READLN(R);
     UNTIL (R>=1) AND (R<=999);

     REPEAT
           GOTOXY(54,6);WRITE('---]  ');
           GOTOXY(54,6);READLN(M);
     UNTIL (M>=1) AND (M<=999);

     O:=R DIV M;
     GOTOXY(35,7);WRITE('TOTAL NILAI R/M = ',O:3:2);
     GOTOXY(35,8);WRITE('TEKAN ENTER UNTUK KEMBALI....');
     READLN
END;

VAR
   PIL   : CHAR;
   PUTAR : BOOLEAN;
BEGIN
     CLRSCR;
     PUTAR := TRUE;
     WHILE PUTAR = TRUE DO
       BEGIN
            CLRSCR;
            PIL := ' ';
            MENU(PIL);
            CASE PIL OF
            '1' : TAMBAH;
            '2' : KALI;
            '3' : BAGI;
            '4' : BEGIN
                       PUTAR := FALSE;
                       CLRSCR;
                       GOTOXY(35,12);WRITE('NURIL SALAM SUKSES ......');
                       READLN;
                  END;
            END;
       END;
END.
