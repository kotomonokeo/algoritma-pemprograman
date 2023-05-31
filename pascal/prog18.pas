PROGRAM PRO18;
USES WINCRT;
VAR
   JK  : CHAR;
   KET : STRING[20];
BEGIN
     CLRSCR;
     KET :='PEREMPUAN';
     WRITE('      MEMASUKAN JENIS KELAMIN [L/P] = ');READLN(JK);

     IF (JK='L') OR (JK='l') THEN
        BEGIN
             KET := 'LAKI-LAKI';
        END;

     WRITELN('     ANDA BERJENIS KELAMIN ',KET);
END.