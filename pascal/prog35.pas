PROGRAM PROG35;
USES WINCRT;
TYPE
    ANGKA = ARRAY[1..20] OF INTEGER;
    JENIS = ARRAY[1..20] OF CHAR;
    UMUR  = ARRAY[1..20] OF INTEGER;
VAR
   AK       : ANGKA;
   JK       : JENIS;
   UM       : UMUR;
   X,Y,NL,T,U: INTEGER;
   RR       : REAL;
   LAGI,JS  : CHAR;
   L,P,MD,LU: INTEGER;
   KET      : STRING[15];
   KET2     : STRING[15];
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
            GOTOXY(20,7);WRITE('2. JENIS KELAMIN= [-]');
            GOTOXY(20,8);WRITE('3. UMUR (1-100) = [---]   TH');
            GOTOXY(25,11);WRITE('INGIN INPUT [Y/T] = [-]');

            REPEAT
                  GOTOXY(39,6);WRITE('--]     ');
                  GOTOXY(39,6);READLN(NL);
            UNTIL (NL>=1) AND (NL<=99);

            REPEAT
                  GOTOXY(39,7);WRITE('-]      ');
                  GOTOXY(39,7);READLN(JS);
            UNTIL (JS='L') OR (JS='l') OR (JS='P') OR (JS='p');

            REPEAT
                  GOTOXY(39,8);WRITE('---]   TH');
                  GOTOXY(39,8);READLN(U);
            UNTIL (U>=1) AND (U<=100);

            AK[X]:=NL;
            JK[X]:=JS;
            UM[X]:=U;

            REPEAT
                  GOTOXY(46,11);WRITE('-]    ');
                  GOTOXY(46,11);READLN(LAGI);
            UNTIL (LAGI='Y') OR (LAGI='y') OR (LAGI='T') OR (LAGI='t');

       END;
       CLRSCR;
       WRITELN('                              DAFTAR NILAI             ');
       WRITELN('                              ------------             ');
       WRITELN('    ------------------------------------------------------------------------    ');
       WRITELN('       NO      NILAI         JENIS KELAMIN        UMUR        KETERANGAN        ');
       WRITELN('    ------------------------------------------------------------------------    ');
       FOR Y:= 1 TO X DO                                              
          BEGIN
               CASE JK[Y] OF
                 'L','l' : BEGIN
                                KET := 'LAKI-LAKI';
                                L:=L+1;
                           END;
                 'P','p' : BEGIN
                                KET := 'PEREMPUAN';
                                P:=P+1;
                           END;
               END;

               CASE UM[Y] OF
                 1..55   : BEGIN
                                KET2 := 'MUDA - DEWASA';
                                MD:=MD+1;
                           END;
                 56..100 : BEGIN
                                KET2 := 'LANJUT - USIA';
                                LU:=LU+1;
                           END;
               END;

               WRITELN('      ',Y:2,'       ',AK[Y]:2,'      ',KET:15,'            ',UM[Y]:3,'       ',KET2:15);
               T := T + AK[Y];
          END;

       WRITELN('    ------------------------------------------------------------------------     ');
       RR:= T/X;
       WRITELN('         TOTAL        = ',T:5);
       WRITELN('         RATA - RATA  = ',RR:5:0);
       WRITELN('         LAKI - LAKI  = ',L:5);
       WRITELN('         PEREMPUAN    = ',P:5);
       WRITELN('         MUDA - DEWASA= ',MD:5);
       WRITELN('         LANJUT - USIA= ',LU:5);
END.