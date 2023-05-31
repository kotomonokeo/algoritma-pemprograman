PROGRAM TUGAS_FB;
USES WINCRT;
TYPE
    SAPI = RECORD
              NP : STRING[10];
              JK : CHAR;
              US : CHAR;
              UK : CHAR;
              HP : INTEGER;
              END;
    SIMPAN_SAPI = ARRAY[1..500] OF SAPI;
VAR
   HM                      : SIMPAN_SAPI;
   X,Y,JJ,B,A,M,D,G,KU,I,H : INTEGER;
   J,U,K,LAGI              : CHAR;
   N                       : STRING[10];
   KET,KET1,KET2           : STRING[6];
   KET3                    : STRING[23];
BEGIN
     CLRSCR;
     X := 0;
     LAGI := 'Y';
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            X := X + 1;
            GOTOXY(10,3);WRITE('NO PEMBELIAN = [---]');
            GOTOXY(26,3);WRITE(X:3);
            GOTOXY(30,6);WRITE('PEMBELIAN SAPI');
            GOTOXY(15,8);WRITE('1. NAMA PEMBELI             = [----------]');
            GOTOXY(15,9);WRITE('2. JENIS KELAMIN SAPI [J/B] = [-]');
           GOTOXY(15,10);WRITE('3. UMUR SAPI [A/M/D]        = [-]');
           GOTOXY(15,11);WRITE('4. UKURAN SAPI [G/I/K]      = [-]');
           GOTOXY(15,12);WRITE('5. HARGA PRODUKSI           = [---] JUTA');
           GOTOXY(25,15);WRITE('INPUT DATA HEWAN [Y/T] = [-]');

           GOTOXY(46,8);READLN(N);

           REPEAT
                 GOTOXY(46,9);WRITE('-]     ');
                 GOTOXY(46,9);READLN(J);
           UNTIL (UPCASE(J)='J') OR (UPCASE(J)='B');

           REPEAT
                 GOTOXY(46,10);WRITE('-]     ');
                 GOTOXY(46,10);READLN(U);
           UNTIL (UPCASE(U)='A') OR (UPCASE(U)='M') OR (UPCASE(U)='D');

           REPEAT
                 GOTOXY(46,11);WRITE('-]     ');
                 GOTOXY(46,11);READLN(K);
           UNTIL (UPCASE(K)='G') OR (UPCASE(K)='I') OR (UPCASE(K)='K');

           GOTOXY(46,12);READLN(H);

           HM[X].NP:=N;
           HM[X].JK:=J;
           HM[X].US:=U;
           HM[X].UK:=K;
           HM[X].HP:=H;

           REPEAT
                 GOTOXY(51,15);WRITE('-]   ');
                 GOTOXY(51,15);READLN(LAGI);
           UNTIL (UPCASE(LAGI)='Y') OR (UPCASE(LAGI)='T');
       END;

CLRSCR;
WRITELN('                            LAPORAN PEMBELIAN SAPI                        ');
WRITELN('--------------------------------------------------------------------------------');
WRITELN(' NO   NAMA PEMBELI   JENIS KELAMIN    UMUR    UKURAN    HARGA PRODUKSI');
WRITELN('--------------------------------------------------------------------------------');
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

       CASE HM[Y].US OF
        'A','a' : BEGIN
                       KET1 :='ANAK';
                       A := A +1;
                  END;
        'M','m' : BEGIN
                       KET1 :='MUDA';
                       M := M +1;
                  END;
        'D','d' : BEGIN
                       KET1 :='DEWASA';
                       D := D +1;
                  END;
       END;

       CASE HM[Y].UK OF
        'G','g' : BEGIN
                       KET2:='GEMUK';
                       G := G + 1;
                  END;
        'K','k' : BEGIN
                       KET2:='KURUS';
                       KU := KU + 1;
                  END;
        'I','i' : BEGIN
                       KET2:='IDEAL';
                       I := I + 1;
                  END;
       END;

       CASE HM[Y].HP OF
        0..5   : BEGIN
                      KET3:='TIDAK ADA';
                 END;
        6..20  : BEGIN
                      KET3:='MURAH, UNTUK UMUM';
                 END;
        21..50 : BEGIN
                      KET3:='CUKUP, KUALITAS BAGUS';
                 END;
        51..100: BEGIN
                      KET3:='MAHAL, KUALITAS TERBAIK';
                 END;
        ELSE
                             BEGIN
                                  KET3:='HARGA TIDAK DITEMUKAN';
                             END;
                       
       END;

       WRITELN(Y:3,'     ',HM[Y].NP:10,'   ',KET:6,'         ',KET1:6,'   ',KET2:6,'   ',KET3:23);
  END;

 WRITELN('--------------------------------------------------------------------------------');
 WRITELN(' =>JUMLAH JANTAN = ',JJ:5,'   =>GEMUK = ',G:5,'   =>KURUS = ',KU:5,'   =>MUDA   = ',M:5);
 WRITELN(' =>JUMLAH BETINA = ',B:5,'   =>IDEAL = ',I:5,'   =>ANAK  = ',A:5,'   =>DEWASA = ',D:5);
END.