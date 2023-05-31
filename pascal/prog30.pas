PROGRAM PROG30;
USES WINCRT;
VAR
   NK, JG     : INTEGER;
   NM         : STRING[30];
   KET, KET1  : STRING[40];
   TG, LAGI   : CHAR;
   KG         : REAL;
BEGIN
     CLRSCR;
     NK   := 1;
     LAGI := 'Y';
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            WRITELN('  NO KODE  = ', NK);
            WRITELN;
            WRITELN('                PRODUKSI KAIN                  ');
            WRITELN;
            WRITE('        1. NAMA KOTA/PULAU/NEGARA    = ');READLN(NM);
            WRITE('        2. KEKUATAN GEMPA            = ');READLN(KG);
            WRITE('        3. JUMLAH GEMPA              = ');READLN(JG);
            WRITE('        4. TYPE GEMPA     [S/K/L]    = ');READLN(TG);
            WRITELN;
            CASE JG OF
              0         : BEGIN
                               KET := 'TIDAK ADA GEMPA';
                          END;
              1         : BEGIN
                               KET := 'WASPADA';
                          END;
              2..5      : BEGIN
                               KET := 'PANGGIL PAK LURAH';
                          END;
              6..10     : BEGIN
                               KET := 'PANGGIL SOS';
                          END;
              ELSE
                  BEGIN
                       KET := 'LUAR BIASA';
                  END;
            END;

            CASE TG OF
              'S','s': BEGIN
                            KET1 := 'SEDANG, HATI-HATI';
                       END;
              'K','k': BEGIN
                            KET1 := 'KUAT, CARI BANTUAN';
                       END;
              'L','l': BEGIN
                            KET1 := 'LEMAH, WASPADA';
                       END;
              ELSE
                       BEGIN
                            KET1 := 'DATA HILANG';
                       END;
            END;

            WRITELN(NM,' DENGAN KEKUATAN GEMPA ',KG:10:1);
            WRITELN(' JUMLAH GEMPA ',JG,' ADALAH ',KET);
            WRITELN(' TYPE GEMPA ',TG,' ADALAH ',KET1);
            WRITELN;
            WRITE('         INGIN INPUT [Y/T] = ');READLN(LAGI);
            NK := NK + 1;
       END;
     WRITELN;
     WRITELN('         NURIL MUSLICHIN        ');
END.