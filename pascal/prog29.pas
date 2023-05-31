PROGRAM PROG29;
USES WINCRT;
VAR
   NP, KB     : INTEGER;
   NB         : STRING[30];
   KET, KET1  : STRING[40];
   TB, LAGI   : CHAR;
   HB         : REAL;
BEGIN
     CLRSCR;
     NP   := 1;
     LAGI := 'Y';
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            WRITELN('  NO PRODUKSI  = ', NP);
            WRITELN;
            WRITELN('                PRODUKSI KAIN                  ');
            WRITELN;
            WRITE('        1. NAMA BENANG               = ');READLN(NB);
            WRITE('        2. TYPE BENANG [B/C/I]       = ');READLN(TB);
            WRITE('        3. HARGA BENANG              = ');READLN(HB);
            WRITE('        4. KEKUATAN BENANG (TAHUN)   = ');READLN(KB);
            WRITELN;
            CASE TB OF
              'B','b'   : BEGIN
                               KET := 'BAIK, BENANG MAHAL';
                          END;
              'C','c'   : BEGIN
                               KET := 'CUKUP, TAPI TIDAK MURAHAN';
                          END;
              'I','i'   : BEGIN
                               KET := 'ISTIMEWA, BENANG DENGAN PRODUKSI KHUSUS';
                          END;
              ELSE
                  BEGIN
                       KET := 'DATA TIDAK ADA';
                  END;
            END;

            CASE KB OF
              1..3   : BEGIN
                            KET1 := 'TIDAK DIPRODUKSI';
                       END;
              4..10  : BEGIN
                            KET1 := 'BENANG STANDART';
                       END;
              11..25 : BEGIN
                            KET1 := 'BENANG MAHAL';
                       END;
              ELSE
                       BEGIN
                            KET1 := 'BENANG KWALITAS PATEN';
                       END;
            END;

            WRITELN(' ',NB,' DENGAN TYPE ',KET,' HARGA ',HB:10:0);
            WRITELN(' DENGAN KEKUATAN ',KB,' TAHUN ADALAH BENANG ',KET1);
            WRITE('         INGIN INPUT [Y/T] = ');READLN(LAGI);
            NP := NP + 1;
       END;
     WRITELN;
     WRITELN('         NURIL MUSLICHIN        ');
END.