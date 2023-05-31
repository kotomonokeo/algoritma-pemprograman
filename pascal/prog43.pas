PROGRAM PROG43;
USES WINCRT;
TYPE
   MURID  = RECORD
             NM : STRING[10];
             UM : BYTE;
             JK : CHAR;
            END;
   RUANG = ARRAY[1..20] OF MURID;
VAR
   MR      : RUANG;
   X       : INTEGER;
   PUTAR   : BOOLEAN;
   PIL     : CHAR;
PROCEDURE MENU(VAR PIL:CHAR);
BEGIN
  CLRSCR;
  GOTOXY(35,3);WRITE('MENU SISTEM');
  GOTOXY(25,6);WRITE('1. INPUT MURID');
  GOTOXY(25,7);WRITE('2. EDIT MURID');
  GOTOXY(25,8);WRITE('3. HAPUS MURID');
  GOTOXY(25,9);WRITE('4. LAPORAN KESELURUHAN');
 GOTOXY(25,10);WRITE('5. LAPORAN PERHALAMAN');
 GOTOXY(25,11);WRITE('6. KELUAR');
 GOTOXY(35,13);WRITE('PILIH [1-6] = [-]');
 REPEAT
    GOTOXY(50,13);WRITE('-]  ');
    GOTOXY(50,13);READLN(PIL);
UNTIL (PIL='1')OR(PIL='2')OR(PIL='3')OR(PIL='4')OR(PIL='5')OR(PIL='6');
END;
PROCEDURE INPUT_M;
VAR
    N   : STRING[10];
    U   : BYTE;
    J   : CHAR;
    KET : STRING[10];
    LAGI: CHAR;
   
BEGIN
     CLRSCR;
     IF X=20 THEN
      BEGIN          
        CLRSCR;
        GOTOXY(30,12);WRITE('DATA SUDAH PENUH');
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
            GOTOXY(10,1);WRITE('NO URUT = [--]');
            GOTOXY(21,1);WRITE(X);
            GOTOXY(35,4);WRITE('INPUT DATA MURID');
            GOTOXY(25,6);WRITE('1. NAMA                = [---------]');
            GOTOXY(25,7);WRITE('2. UMUR (5-25)         = [--] TAHUN');
            GOTOXY(25,8);WRITE('3. JENIS KELAMIN [L/P] = [-]');
            GOTOXY(27,11);WRITE('INPUT DATA [Y/T] = [-]');
            GOTOXY(51,6);READLN(N);
            REPEAT
              GOTOXY(51,7);WRITE('--] TAHUN');
              GOTOXY(51,7);READLN(U);
            UNTIL (U>=5) AND (U<=25) ;
            REPEAT
              GOTOXY(51,8);WRITE('-]  ');
              GOTOXY(51,8);READLN(J);
            UNTIL (UPCASE(J)='L') OR (UPCASE(J)='P') ;
            MR[X].NM := N;
            MR[X].UM := U;
            MR[X].JK := J;
            REPEAT
              GOTOXY(47,11);WRITE('-]  ');
              GOTOXY(47,11);READLN(LAGI);
            UNTIL (UPCASE(LAGI)='Y') OR (UPCASE(LAGI)='T') ;
        END;
       END;
END;
PROCEDURE EDIT_M;
BEGIN
     CLRSCR;
     GOTOXY(30,12);WRITE('DATA MASIH DI PROSES');
     READLN;
END;
PROCEDURE HAPUS_M;
VAR
   W,S      : INTEGER;
   LAGI, HP : CHAR;
   KET      : STRING[10];
BEGIN
     CLRSCR;
     IF X=0 THEN
     BEGIN
        CLRSCR;
        GOTOXY(30,12);WRITE('DATA TIDAK BISA DIHAPUS');
        READLN;
        END
        ELSE
         BEGIN
            LAGI := 'Y';
            CLRSCR;
            WHILE(UPCASE(LAGI))= 'Y' DO
            BEGIN
                 CLRSCR;
                 GOTOXY(35,3);WRITE('HAPUS DATA SISWA');
                 GOTOXY(25,5);WRITE('MASUKAN NO RUANG = [--]');
                 REPEAT
                    GOTOXY(46,5);WRITE('--]  ');
                    GOTOXY(46,5);READLN(W);
                 UNTIL (W>=1) AND (W<=X);
                 GOTOXY(25,10);WRITE('1. NAMA          = [',MR[W].NM:10,']');
                 GOTOXY(25,11);WRITE('2. UMUR (5-25)   = [',MR[W].UM:2,'] TAHUN');
                 CASE MR[W].JK OF
                    'L','l'  : KET := 'LAKI-LAKI';
                    'P','p'  : KET := 'PEREMPUAN';
                 END;
                 GOTOXY(25,12);WRITE('3. JENIS KELAMIN = [',KET:10,']');
                 GOTOXY(35,13);WRITE('HAPUS DATA [Y/T] = [-]');
                 REPEAT
                    GOTOXY(55,13);WRITE('-]');
                    GOTOXY(55,13);READLN(HP);
                 UNTIL (UPCASE(HP)='Y') OR (UPCASE(HP)='T');
                 IF HP ='Y' THEN
                    BEGIN
                        IF W=X THEN
                        BEGIN
                        X:=X-1;
                        END
                        ELSE
                        BEGIN
                         FOR S:= W TO X DO
                         BEGIN
                           MR[S].NM:= MR[S+1].NM;
                           MR[S].UM:= MR[S+1].UM;
                           MR[S].JK:= MR[S+1].JK;
                         END;
                         X:=X-1;
                        END;
                    END;
                 GOTOXY(25,15);WRITE('INGIN MENGHAPUS DATA KEMBALI [Y/T] = [-]');
                 GOTOXY(63,15);READLN(LAGI);
            END;
         END;
END;
PROCEDURE LAP_KES;
VAR
   Y, JL, JP  : INTEGER;
   KET        : STRING[10];
BEGIN
     CLRSCR; JL:=0; JP:=0;
     IF X=0 THEN
     BEGIN   
         CLRSCR;
         GOTOXY(30,12);WRITE('DATA BELUM ADA, INPUT DULU');
         READLN;
     END
     ELSE
     BEGIN
         WRITELN('        LAPORAN DATA MURID           ');
         WRITELN('-------------------------------------');
         WRITELN('NO NAMA MURID   UMUR  JENIS KELAMIN  ');
         WRITELN('-------------------------------------');
         FOR Y:= 1 TO X DO
          BEGIN
            CASE MR[Y].JK OF
              'L','l' : BEGIN
                            KET:='LAKI-LAKI';
                            JL:=JL+1;
                        END;
              'P','p' : BEGIN
                            KET:='PEREMPUAN';
                            JP:=JP+1;
                        END;
            END;
          WRITELN(Y:3,' ',MR[Y].NM:10,'  ',MR[Y].UM:2,'  ',KET:10);
          END;
         WRITELN('-----------------------------------');
         WRITELN(' JUMLAH LAKI-LAKI  = ',JL:5);
         WRITELN(' JUMLAH PEREMPUAN  = ',JP:5);
         READLN;
      END;
END;
PROCEDURE LAP_HAL;
BEGIN
     CLRSCR;
     GOTOXY(30,12);WRITE('DATA MASIH DI PROSES');
     READLN;
END;
BEGIN
  X:=0;
  PUTAR := TRUE;
  CLRSCR;
  WHILE PUTAR = TRUE DO
    BEGIN
       CLRSCR;
       PIL:=' ';
       MENU(PIL);
       CASE PIL OF
         '1'  : INPUT_M;
         '2'  : EDIT_M;
         '3'  : HAPUS_M;
         '4'  : LAP_KES;
         '5'  : LAP_HAL;
         '6'  : BEGIN
                    CLRSCR;
                    PUTAR:=FALSE;
                    GOTOXY(35,12);WRITE('DATA INPUT SELESAI...');
                END;
         END;
    END; 
END.