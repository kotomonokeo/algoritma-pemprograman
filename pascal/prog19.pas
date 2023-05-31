PROGRAM PROG19;
USES WINCRT;
VAR
   JK  : CHAR;
   KET : STRING[50];
BEGIN
     CLRSCR;

     WRITE('         MASUKAN JENIS KELAMIN [L/P] = ');READLN(JK);

     IF (JK='L') OR (JK='l') THEN
        BEGIN
             KET := 'LAKI-LAKI';
        END
        ELSE
            IF (JK='P') OR (JK='p') THEN
               BEGIN
                    KET := 'PEREMPUAN';
               END
               ELSE
               BEGIN
                    KET := ('ANDA SALAH PILIH JENIS KELAMIN');
               END;
     WRITELN('        ANDA BERJENIS KELAMIN ',KET);
END.