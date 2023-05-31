PROGRAM PROG20;
USES WINCRT;
VAR
   X, NILAI : INTEGER;
   NM       : STRING;
   KET      : STRING[30];
   LAGI     : CHAR;
BEGIN
     CLRSCR;
     LAGI := 'Y';
     X    :=   1;
     WHILE (LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            WRITELN('DATA URUT = ',X);
            WRITELN;
            WRITELN('          INPUT NILAI UJIAN         ');
            WRITELN;
            WRITE('      1. NAMA           = ');READLN(NM);
            WRITE('      2. NILAI UJIAN    = ');READLN(NILAI);

            IF (NILAI<1) OR (NILAI>100) THEN
               BEGIN
                    KET := 'TIDAK ADA NILAI';
               END
               ELSE
                   IF (NILAI>1) AND (NILAI<59) THEN
                      BEGIN
                           KET := 'TIDAK LULUS';
                      END
                      ELSE
                      BEGIN
                           KET := 'LULUS';
                      END;

            WRITELN('     ',NM,' ANDA BERNILAI ',NILAI,' DENGAN KETERANGAN ',KET);
            WRITELN;
            WRITE('              INGIN INPUT [Y/T] = ');READLN(LAGI);
            X := X + 1;
       END;
     WRITELN;
     WRITELN('                      SELESAI         ');
END.