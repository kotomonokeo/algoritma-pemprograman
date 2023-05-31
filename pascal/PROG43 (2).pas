PROGRAM PROG45;
USES WINCRT;
TYPE
    MURID  = RECORD
               NM  : STRING[10];
               UM  : BYTE;
               JK  : CHAR;
             END;
    RUANG  = ARRAY[1..20] OF MURID;
VAR
    MR       : RUANG;
    PUTAR    : BOOLEAN;
    PIL      : CHAR;
    X        : INTEGER;
PROCEDURE MENU(VAR PIL : CHAR);
BEGIN
   CLRSCR;
   GOTOXY(35,5);WRITE('MENU SISTEM');
   GOTOXY(25,6);WRITE('1. INPUT MURID');
   GOTOXY(25,7);WRITE('2. HAPUS MURID');
   GOTOXY(25,8);WRITE('3. EDIT MURID');
   GOTOXY(25,9);WRITE('4. LAPORAN KESELURUHAN');
  GOTOXY(25,10);WRITE('5. LAPORAN / HALAMAN');
  GOTOXY(25,11);WRITE('6. KELUAR');
  GOTOXY(30,14);WRITE('PILIH [1-6] = [-]');
  REPEAT
      GOTOXY(45,14);WRITE('-]  ');
      GOTOXY(45,14);READLN(PIL);
UNTIL (PIL='1')OR(PIL='2')OR(PIL='3')OR(PIL='4')OR(PIL='5')OR(PIL='6'); 
END;



PROCEDURE INPUT_M;
VAR
  N        : STRING[10];
  U        : BYTE;
  J,LAGI   : CHAR;

BEGIN
   CLRSCR;
   IF X=20 THEN
     BEGIN   
      CLRSCR;
      GOTOXY(30,12);WRITE('DATA PENUH');
      READLN;
     END
     ELSE
     BEGIN
         CLRSCR;
         LAGI:='Y';
         WHILE (UPCASE(LAGI)='Y') DO
          BEGIN
            CLRSCR;
            X:=X+1;
           GOTOXY(5,1);WRITE('NO URUT = [--]');
           GOTOXY(16,1);WRITE(X);
           GOTOXY(35,3);WRITE('INPUT DATA MURID');
           GOTOXY(26,6);WRITE('1. NAMA                = [---------]');
           GOTOXY(26,7);WRITE('2. UMUR (5-25)         = [--] TAHUN');
           GOTOXY(26,8);WRITE('3. JENIS KELAMIN [L/P] = [-]');
          GOTOXY(27,12);WRITE('INPUT DATA [Y/T] = [-]');
           GOTOXY(52,6);READLN(N);
           REPEAT
             GOTOXY(52,7);WRITE('--] TAHUN');
             GOTOXY(52,7);READLN(U);
           UNTIL (U>=5) AND (U<=25) ;
           REPEAT
             GOTOXY(52,8);WRITE('-] ');
             GOTOXY(52,8);READLN(J);
           UNTIL ((UPCASE(J))='L') OR (UPCASE(J)='P') ;
           MR[X].NM := N;
           MR[X].UM := U;
           MR[X].JK := J;
           REPEAT
             GOTOXY(47,12);WRITE('-] ');
             GOTOXY(47,12);READLN(LAGI);
           UNTIL (UPCASE(LAGI)='Y') OR (UPCASE(LAGI)='T') ;
       END;
     END;
END;

PROCEDURE HAPUS_M;
VAR
   W,S      : INTEGER ;
   LAGI, HP : CHAR;
   KET      : STRING [10];

BEGIN
  CLRSCR;
  IF  X = 0 THEN
   BEGIN
      CLRSCR;
      GOTOXY(30,12);WRITE('DATA TIDAK BISA DIHAPUS');
      READLN;
   END
   ELSE
   BEGIN
       LAGI := 'Y';
       CLRSCR;
       WHILE (UPCASE (LAGI) = 'Y') DO
       BEGIN
        CLRSCR;
        GOTOXY(35,3);WRITE('HAPUS DATA SISWA');
        GOTOXY(25,5);WRITE('MASUKKAN NO RUANG = [--]');
        REPEAT
             GOTOXY(46,5);WRITE('--]   ');
             GOTOXY(46,5);READLN(W);
        UNTIL (W>=1) AND (W<=X);
       GOTOXY(25,10);WRITE('1. NAMA             = [',MR[W].NM:10,']');
       GOTOXY(25,11);WRITE('2. UMUR (5-25)      = [',MR[W].UM:2,']TAHUN');
       CASE MR[W].JK OF
         'L','l' : KET := ' LAKI-LAKI';
         'P','p' : KET := ' PEREMPUAN ';
         END;
         GOTOXY(25,12);WRITE('3. JENIS KELAMIN  = [',KET:10,']');
         GOTOXY(35,13);WRITE('HAPUS DATA [Y/T] = [-]');
         REPEAT
               GOTOXY(55,13);WRITE('-]');
               GOTOXY(55,13);READLN(HP);
         UNTIL (UPCASE(HP) = 'Y') OR (UPCASE(HP)='T');
         IF HP='Y' THEN
           BEGIN
            IF W=X THEN
              BEGIN
                   X:=X-1;
              END

              ELSE
              BEGIN
                   FOR S := W TO X DO
                    BEGIN
                       MR[S].NM := MR[S+1].NM ;
                       MR[S].UM := MR[S+1].UM ;
                       MR[S].JK := MR[S+1].JK ;
                    END;
                    X := X - 1;

              END;
                    
           END;
          GOTOXY(25,15);WRITE('INGIN MENGHAPUS DATA KEMBALI [Y/T] = [-]');
          GOTOXY(63,15);READLN(LAGI);
        END;
    END;
END;



PROCEDURE EDIT_M;
VAR
      NR, EU          : BYTE;
      EJ,LAGI, E      : CHAR;
      EN                : STRING[10];

BEGIN
  CLRSCR;
  IF X = 0 THEN
   BEGIN
      CLRSCR;
      GOTOXY(30,12);WRITE('DATA BELUM ADA');
      READLN;
    END
    ELSE
    BEGIN
       CLRSCR;
       LAGI:='Y';
       WHILE (UPCASE(LAGI)='Y' ) DO
         BEGIN
              CLRSCR;
              GOTOXY(35,3);WRITE('EDIT DATA');
              GOTOXY(25,5);WRITE('MASUKKAN NOMOR RUANG = [--] 1 - ',X:2);
              REPEAT
                   GOTOXY(49,5);WRITE('--] 1 - ',X:2);
                   GOTOXY(49,5);READLN(NR);
              UNTIL (NR>=1) AND (NR<=X) ; 
              GOTOXY(35,7);WRITE('DATA MURID');
              GOTOXY(55,8);WRITE('EDIT [Y/T]');
              GOTOXY(20,10);WRITE('1. NAMA                = [----------] [T]');
              GOTOXY(20,11);WRITE('2. UMUR (5 - 25)       = [--] TAHUN   [T]');
              GOTOXY(20,12);WRITE('3. JENIS KELAMIN [L/P] = [-]          [T]');
              GOTOXY(46,10);WRITE(MR[NR].NM);
              GOTOXY(46,11);WRITE(MR[NR].UM);
              GOTOXY(46,12);WRITE(MR[NR].JK);
              E:='T';
              REPEAT
                     GOTOXY(59,10);WRITE('T] ');
                     GOTOXY(59,10);READLN(E);
              UNTIL (UPCASE(E)='T') OR (UPCASE(E)='Y') ;
              IF UPCASE(E)='Y' THEN
                 BEGIN
                        GOTOXY(46,10);READLN(EN);
                        MR[NR].NM := EN;
                  END;
              E:='T';
              REPEAT
                     GOTOXY(59,11);WRITE('T] ');
                     GOTOXY(59,11);READLN(E);
              UNTIL (UPCASE(E)='T') OR (UPCASE(E)='Y') ;
              IF UPCASE(E)='Y' THEN
                 BEGIN
                        REPEAT
                           GOTOXY(46,11);WRITE('--] TAHUN   [Y]');
                           GOTOXY(46,11);READLN(EU);
                        UNTIL (EU>=5) AND (EU<=25);
                         MR[NR].UM := EU;
                  END;
              E:='T';
              REPEAT
                     GOTOXY(59,12);WRITE('T] ');
                     GOTOXY(59,12);READLN(E);
              UNTIL (UPCASE(E)='T') OR (UPCASE(E)='Y') ;
              IF UPCASE(E)='Y' THEN
                 BEGIN
                        REPEAT
                           GOTOXY(46,12);WRITE('-]          [Y]');
                           GOTOXY(46,12);READLN(EJ);
                        UNTIL (UPCASE(EJ)='L') OR (UPCASE(EJ)='P');
                         MR[NR].JK := EJ;
                  END;
             GOTOXY(20,15);WRITE('INGIN EDIT DATA YANG LAIN [Y/T] = [-]');
             REPEAT
                  GOTOXY(55,15);WRITE('-]  ');
                  GOTOXY(55,15);READLN(LAGI);
             UNTIL (UPCASE(LAGI)='T') OR (UPCASE(LAGI)='Y') ;
         END;   

    END;
END;


























































PROCEDURE LAP_KES;
VAR
   Y ,JL, JP   : INTEGER;
   KET         : STRING[10];
BEGIN
   CLRSCR;
   IF X=0 THEN
    BEGIN   
      CLRSCR;
      GOTOXY(30,12);WRITE('DATA MASIH KOSONG');
      READLN;
    END
    ELSE
    BEGIN
      CLRSCR; JL :=0; JP:=0;
      WRITELN('             LAPORAN DATA SISWA          ');
      WRITELN('-----------------------------------------');
      WRITELN('NO  NAMA MURID    UMUR    JENIS KELAMIN  ');
      WRITELN('-----------------------------------------');
      FOR Y:=1 TO X DO
       BEGIN
          CASE MR[Y].JK OF
            'L','l' : BEGIN
                         KET:='LAKI-LAKI';
                         JL:=JL+1;
                      END;
            'P','p'  : BEGIN
                          KET:='PEREMPUAN';
                          JP:=JP+1;
                       END;
           END;
      WRITELN(Y:2,'  ',MR[Y].NM:10,'  ',MR[Y].UM:2,'  ',KET:10);
      END;
      WRITELN('----------------------------------------');
      WRITELN('  JUMLAH LAKI-LAKI  = ',JL:5);
      WRITELN('  JUMLAH PEREMPUAN  = ',JP:5);
      READLN;
    END; 
END;












PROCEDURE LAP_HAL;
VAR
   KET            : STRING[10];
   TL,TP,GTL,GTP  : INTEGER;
   H,L1,L2,T,HL,M : INTEGER;
BEGIN
  CLRSCR; GTL:=0 ; GTP:=0;
  IF X = 0 THEN
  BEGIN
      CLRSCR;
      GOTOXY(30,12);WRITE('DATA TIDAK ADA');
      READLN;
  END
  ELSE
  BEGIN
      CLRSCR;
      H:=(X+2) DIV 3;
      L1:=1;
      M:=1;
      IF H =1 THEN
       BEGIN
         L2:=X;
       END
       ELSE
       BEGIN
          L2:=3;
       END;
       FOR T := 1 TO H DO
       BEGIN
           CLRSCR;
           IF M = H THEN
             BEGIN
                L2:= X;
             END;
           WRITELN('HAL = ',T:2);
           WRITELN('                LAPORAN MURID               ');
           WRITELN('--------------------------------------------');
           WRITELN(' NO  NAMA MURID    UMUR    JENIS KELAMIN    ');
           WRITELN('--------------------------------------------');
           TL:=0; TP:=0;
           FOR HL := L1 TO L2 DO
           BEGIN
                CASE MR[HL].JK OF
                   'L','l' : BEGIN
                              KET:='LAKI-LAKI';
                              TL:=TL+1;
                             END;
                  'P','p'  : BEGIN
                             KET:='PEREMPUAN';
                             TP:=TP+1;
                             END;
                END;
                WRITELN(HL:2,'  ',MR[HL].NM:10,'  ',MR[HL].UM:2,'  ',KET:10);
          END;
      WRITELN('----------------------------------------');
      WRITELN('  TOTAL LAKI-LAKI  = ',TL:5);
      WRITELN('  TOTAL PEREMPUAN  = ',TP:5);
      GTL:=GTL+TL;
      GTP:=GTP+TP;
      L2:=L2+3;
      L1:=L1+3;
      
      IF M=H THEN
        BEGIN
            WRITELN('----------------------------------------');
            WRITELN('  GRAND TOTAL LAKI-LAKI  = ',GTL:5);
            WRITELN('  GRAND TOTAL PEREMPUAN  = ',GTP:5);
        END;
      M:=M+1;
      READLN;
   END;
END;

END;


















BEGIN
 CLRSCR;
 PUTAR := TRUE;
 X:=0;
 WHILE PUTAR = TRUE DO
  BEGIN
      CLRSCR;
      PIL:=' ';
      MENU(PIL);
      CASE PIL OF
        '1'  : INPUT_M;
        '2'  : HAPUS_M;
        '3'  : EDIT_M;
        '4'  : LAP_KES;
        '5'  : LAP_HAL;
        '6'  : BEGIN
                  CLRSCR;
                  PUTAR:=FALSE;
                  GOTOXY(30,12);WRITE('SISTEM  MURID SELESAI....');
                END;
       END;
   END;

END.

















