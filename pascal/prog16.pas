PROGRAM PROG16;
USES WINCRT;
VAR
   NM       : STRING;
   UM       : INTEGER;
   TG       : REAL;
   GD       : STRING[2];
   JK, LAGI : CHAR;
BEGIN
     CLRSCR;
     LAGI := 'Y';
     WHILE(LAGI='Y') OR (LAGI='y') DO
       BEGIN
            CLRSCR;
            WRITELN('                 INPUT SISWA             ');
            WRITELN;
            WRITE('        1. NAMA               =       ');READLN(NM);
            WRITE('        2. UMUR               = TH.   ');READLN(UM);
            WRITE('        3. TINGGI             = CM.   ');READLN(TG);
            WRITE('        4. GOLONGAN DARAH     =       ');READLN(GD);
            WRITE('        5. JENIS KELAMIN      = [L/P] ');READLN(JK);
            WRITELN;
            WRITELN('     ',NM,' DENGAN UMUR ',UM,' TINGGI ',TG:5:1);
            WRITELN('     GOLONGAN DARAH ',GD,' JENIS KELAMIN ',JK);
            WRITELN;
            WRITE('       INGIN INPUT DATA [Y/T] = ');READLN(LAGI);
       END;
     WRITELN;
     WRITELN('                  SELESAI  ');
END.