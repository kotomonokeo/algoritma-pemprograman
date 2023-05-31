PROGRAM KELAS_2;
USES WINCRT;
VAR
   UT, ANGKA, BR, T, GT : INTEGER;
BEGIN
     UT   :=  5;
     ANGKA:= 22;
     GT   :=  0;
     WHILE UT>=1 DO
       BEGIN
            BR:= UT;
            T :=  0;
            WHILE BR>=1 DO
              BEGIN
                   WRITE(ANGKA,' ');
                   T    := T + ANGKA;
                   BR   := BR - 1;
                   ANGKA:= ANGKA + 1;
              END;
            WRITELN('= ',T);
            GT:= GT + T;
            UT:= UT - 1;
       END;
     WRITELN('_______________________+');
     WRITELN('TOTAL KESELURUHAN = ',GT);
END. 