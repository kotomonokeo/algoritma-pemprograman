PROGRAM PROG21;
USES WINCRT;
VAR
   X               : INTEGER;
   M, E            : STRING;
   NM              : STRING;
   HP              : REAL;
   KET1            : STRING[30];
   KET2            : STRING[30];
   KET3            : STRING[30];
   LAGI            : CHAR;
BEGIN
     CLRSCR;
     LAGI := 'Y';
     X    :=   1;
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            WRITELN('NO PRODUKSI = ',X);
            WRITELN;
            WRITELN('         NILAI PRODUK SEPATU        ');
            WRITELN;
            WRITE('      1. NAMA SEPATU      = ');READLN(NM);
            WRITE('      2. MUTU [B/C/S]     = ');READLN(M);
            WRITE('      3. EXPORT [E/A/S]   = ');READLN(E);
            WRITE('      4. HARGA PRODUKSI   = ');READLN(HP);

            IF (M='B') OR (M='b') THEN
               BEGIN
                    KET1:= 'BAIK, 85%';
               END
               ELSE
                   IF (M='C') OR (M='c') THEN
                      BEGIN
                           KET1:= 'CUKUP, 60%';
                      END
                      ELSE
                      BEGIN
                           KET1:= 'SEDANG,55%';
                      END;

            IF (E='E') OR (E='e') THEN
               BEGIN
                    KET2:= 'BENUA EROPA';
               END
               ELSE
                   IF (E='A') OR (E='a') THEN
                   BEGIN
                        KET2 := 'BENUA AMERIKA';
                   END
                   ELSE
                   BEGIN
                        KET2 := 'SELURUH ASIA';
                   END;

            IF HP<15000 THEN
               BEGIN
                    KET3 := 'TIDAK PRODUKSI';
               END
               ELSE
                   IF (HP>=15000) AND (HP<=80000) THEN
                      BEGIN
                           KET3 := 'MURAH, UNTUK UMUM';
                      END
                      ELSE
                          IF (HP>=80001) AND (HP<=2000000) THEN
                             BEGIN
                                  KET3 := 'CUKUP, MAHAL';
                             END
                             ELSE
                                 IF (HP>=2000001) AND (HP<=3000000) THEN
                                    BEGIN
                                         KET3 := 'MAHAL, KALANGAN TERBATAS';
                                    END
                                    ELSE
                                    BEGIN
                                         KET3 := 'KALANGAN ELIT';
                                    END;

            WRITELN('  ',NM,' MEMILIKI MUTU ',KET1);
            WRITELN(' DENGAN EXPORT KE ',KET2);
            WRITELN(' HARGA PRODUKSI ',HP:20:2,' KETERANGAN ',KET3);
            WRITELN;
            WRITE('                         INNGIN INPUT [Y/T] = ');READLN(LAGI);
            X := X + 1;
       END;
     WRITELN;
     WRITELN('                       SELESAI              ');
END.