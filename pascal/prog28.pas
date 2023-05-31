PROGRAM PROG28;
USES WINCRT;
VAR
   N      : INTEGER;
   NM, KET: STRING[30];
   UM     : INTEGER;
   LAGI   : CHAR;
BEGIN
     CLRSCR;
     N     := 0;
     LAGI  := 'Y';
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            N := N + 1;
            WRITELN('  NO : ',N);
            WRITELN;
            WRITELN('           INPUT UMUR          ');
            WRITELN;
            WRITE('     1. NAMA      =       ');READLN(NM);
            WRITE('     2. UMUR      = TH.   ');READLN(UM);

            CASE UM OF
              0        : BEGIN
                              KET := ' BELUM LAHIR ';
                         END;
              1..5     : BEGIN
                              KET := ' BALITA ';
                         END;
              6..12    : BEGIN
                              KET := ' ANAK-ANAK ';
                         END;
              13..21   : BEGIN
                              KET := ' REMAJA ';
                         END;
              22..55   : BEGIN
                              KET := ' DEWASA ';
                         END;
              56..200  : BEGIN
                              KET := ' LANSIA ';
                         END;
              ELSE
                         BEGIN
                              KET := ' UMUR TIDAK DITEMUKAN';
                         END;
            END;
            WRITELN(' ',NM,' ANDA BERUMUR ',UM,' ADALAH ',KET);
            WRITELN;
            WRITE('        INGIN INPUT [Y/T] =   ');READLN(LAGI);
       END;
     WRITELN;
     WRITELN('       NURIL MUSLICHIN     ');
END.