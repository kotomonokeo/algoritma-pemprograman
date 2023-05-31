PROGRAM PROG11;
USES WINCRT;
VAR
   UTAMA, ANGKA, TAMBAH, GT, TOT, BERSARANG : INTEGER;
BEGIN
     UTAMA := 1;
     ANGKA := 2;
     GT    := 0;
     TAMBAH:= 1;
     WHILE UTAMA<=3 DO
       BEGIN
            TOT      := 0;
            BERSARANG:= 1;
            WHILE BERSARANG <=2 DO
              BEGIN
                   WRITELN('    ',ANGKA);
                   TOT      := TOT + ANGKA;
                   ANGKA    := ANGKA + TAMBAH;
                   TAMBAH   := TAMBAH + 1;
                   BERSARANG:= BERSARANG + 1;
              END;
            WRITELN('_________ +');
            WRITELN('TOTAL = ',TOT);
            GT   := GT + TOT;
            UTAMA:= UTAMA + 1;
            WRITELN
       END;
     WRITELN('TOTAL KESELURUHAN =',GT);
END.