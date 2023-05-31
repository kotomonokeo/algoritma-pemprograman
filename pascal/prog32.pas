PROGRAM PROG32;
USES WINCRT;
VAR
   N      : INTEGER;
   UM     : BYTE;
   NM     : STRING[25];
   JK,LAGI: CHAR;
   KET    : STRING[15];
BEGIN
     CLRSCR;
     N:= 1;
     LAGI:= 'Y';
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            GOTOXY(10,2);WRITE('NO = [---]');
            GOTOXY(16,2);WRITE(N);
            GOTOXY(30,4);WRITE('DATA IDENTITAS SISWA');
            GOTOXY(15,7);WRITE('1. NAMA                = [-------------------------]');
            GOTOXY(15,8);WRITE('2. UMUR (5-18)         = [--] th    ');
            GOTOXY(15,9);WRITE('3. JENIS KELAMIN [L/P] = [-]          ');
            GOTOXY(15,11);WRITE('---------------------------------------------------------');
            GOTOXY(15,13);WRITE('---------------------------------------------------------');
            GOTOXY(30,15);WRITE('INGIN INPUT [Y/T] = [-]    ');
            GOTOXY(41,7);READLN(NM);
            REPEAT
                 GOTOXY(41,8);WRITE('--] th    ');
                 GOTOXY(41,8);READLN(UM);
            UNTIL (UM>=5) AND (UM<=18);

            REPEAT
                 GOTOXY(41,9);WRITE('-]     ');
                 GOTOXY(41,9);READLN(JK);
            UNTIL (JK='L') OR (JK='l') OR (JK='P') OR (JK='p');

            CASE JK OF
               'L','l' : BEGIN
                              KET := 'LAKI - LAKI';
                         END;
               'P','p' : BEGIN
                              KET := 'PEREMPUAN';
                         END;
            END;
            GOTOXY(15,12);WRITE(NM,' UMUR ANDA ',UM,' BERJENIS KELAMIN ',KET);

            REPEAT
                 GOTOXY(51,15);WRITE('-]    ');
                 GOTOXY(51,15);READLN(LAGI);
            UNTIL (LAGI='Y') OR (LAGI='y') OR (LAGI='T') OR (LAGI='t');
            N:= N + 1;
       END;
     GOTOXY(38,18);WRITE('SELESAI');
END.