PROGRAM PROG36;
USES WINCRT;
TYPE
    HEWAN = RECORD
              NP : STRING[10];
              JH : STRING[15];
              UH : INTEGER;
              JK : CHAR;
              KL : STRING[15];
              UK : CHAR;
              END;
    SIMPAN_HEWAN = ARRAY[1..500] OF HEWAN;
VAR
   HM               : SIMPAN_HEWAN;
   X,Y,U,JJ,B,G,KU,I: INTEGER;
   P                : STRING[10];
   J,L              : STRING[15];
   KET              : STRING[7];
   KET1             : STRING[5];
   K,H,LAGI         : CHAR;
BEGIN
     CLRSCR;
     X := 0;
     LAGI := 'Y';
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            X := X + 1;
            GOTOXY(5,3);WRITE('NO RAWAT = [---]');
            GOTOXY(17,3);WRITE(X:3);
            GOTOXY(20,6);WRITE('KLINIK HEWAN');
            GOTOXY(15,8);WRITE('1. NAMA PEMILIK        = [-------------]');
            GOTOXY(15,9);WRITE('2. JENIS HEWAN         = [-----------------------]');
           GOTOXY(15,10);WRITE('3. UMUR HEWAN          = [---] BULAN ');
           GOTOXY(15,11);WRITE('4. JENIS KELAMIN [J/B] = [-]');
           GOTOXY(15,12);WRITE('5. KELUHAN             = [-------------]');
           GOTOXY(15,13);WRITE('6. UKURAN HEWAN [G/K/I]= [-]');
           GOTOXY(16,17);WRITE('INPUT DATA HEWAN [Y/T] = [-]');

           GOTOXY(41,8);READLN(P);
           GOTOXY(41,9);READLN(J);

           REPEAT
                 GOTOXY(41,10);WRITE('---] BULAN       ');
                 GOTOXY(41,10);READLN(U);
           UNTIL (U>=1) AND (U<=100);

           REPEAT
                 GOTOXY(41,11);WRITE('-]     ');
                 GOTOXY(41,11);READLN(K);
           UNTIL (K='J') OR (K='j') OR (K='B') OR (K='b');

           GOTOXY(41,12);READLN(L);

           REPEAT
                 GOTOXY(41,13);WRITE('-]      ');
                 GOTOXY(41,13);READLN(H);
           UNTIL (H='G') OR (H='g') OR (H='K') OR (H='k') OR (H='I') OR (H='i');

           HM[X].NP:=P;
           HM[X].JH:=J;
           HM[X].UH:=U;
           HM[X].JK:=K;
           HM[X].KL:=L;
           HM[X].UK:=H;

           REPEAT
                 GOTOXY(42,17);WRITE('-]   ');
                 GOTOXY(42,17);READLN(LAGI);
           UNTIL (LAGI='Y') OR (LAGI='y') OR (LAGI='T') OR (LAGI='t');
       END;

CLRSCR;
WRITELN('                          LAPORAN KLINIK HEWAN                            ');
WRITELN('--------------------------------------------------------------------------');
WRITELN('NO   NAMA PEMILIK  JENIS HEWAN  UMUR  JENIS KELAMIN  KELUHAN  UKURAN HEWAN');
WRITELN('--------------------------------------------------------------------------');
FOR Y:= 1 TO X DO
  BEGIN
       CASE HM[Y].JK OF
        'J','j' : BEGIN
                       KET :='JANTAN';
                       JJ := JJ +1;
                  END;
        'B','b' : BEGIN
                       KET :='BETINA';
                       B := B +1;
                  END;
       END;

       CASE HM[Y].UK OF
        'G','g' : BEGIN
                       KET1:='GEMUK';
                       G := G + 1;
                  END;
        'K','k' : BEGIN
                       KET1:='KURUS';
                       KU := KU + 1;
                  END;
        'I','i' : BEGIN
                       KET1:='IDEAL';
                       I := I + 1;
                  END;
       END;
       WRITELN(Y:3,' ',HM[Y].NP:10,' ',HM[Y].JH:15,'   ',HM[Y].UH:3,' ',KET:7,' ',HM[Y].KL:15,'  ',KET1);
  END;

 WRITELN('-------------------------------------------------------------------------');
 WRITELN(' JUMLAH JANTAN = ',JJ:5,' GEMUK = ',G:5,' KURUS = ',KU:5);
 WRITELN(' JUMLAH BETINA = ',B:5,' IDEAL = ',I:5);
END.