PROGRAM PROG41;
USES WINCRT;

PROCEDURE MENU(VAR PIL : CHAR);
BEGIN
     CLRSCR;
     GOTOXY(35,4);WRITE('MENU CINTA');
     GOTOXY(20,6);WRITE('1. CARA MENCARI PASANGAN');
     GOTOXY(20,7);WRITE('2. KONDISI JOBLO');
     GOTOXY(20,8);WRITE('3. CARI CARI YANG ASIK');
     GOTOXY(20,9);WRITE('4. KELUAR');
     GOTOXY(25,12);WRITE('PILIH [1-4] = [-]');

     REPEAT
        GOTOXY(40,12);WRITE('-]    ');
        GOTOXY(40,12);READLN(PIL);
     UNTIL (PIL='1') OR (PIL='2') OR (PIL='3') OR (PIL='4');
END;

PROCEDURE CARA;
BEGIN
     CLRSCR;
     GOTOXY(35,12);WRITE('CARI UANG YANG BANYAK');
     READLN;
END;

PROCEDURE JOBLO;
BEGIN
     CLRSCR;
     GOTOXY(35,12);WRITE('LIHAT LIHATYANG BISA DIAJAK CURHAT');
     READLN;
END;

PROCEDURE CARI;
BEGIN
     CLRSCR;
     GOTOXY(35,12);WRITE('CARI YANG BAIK DAN BERTANGGUNG JAWAB');
     READLN;
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
            '1' : CARA;
            '2' : JOBLO;
            '3' : CARI;
            '4' : BEGIN
                       PUTAR := FALSE;
                       CLRSCR;
                       GOTOXY(35,12);WRITE('JANGAN SEDIH YA ......');
                       READLN;
                  END;
            END;
       END;
END.
