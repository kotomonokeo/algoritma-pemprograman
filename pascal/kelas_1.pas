PROGRAM TUGAS_KELAS;
USES WINCRT;
VAR
   BILANGAN1,BILANGAN2 : INTEGER;
BEGIN
     BILANGAN1 := 3;
     BILANGAN2 := 4;
     WHILE BILANGAN1 <= 7 DO
     WHILE BILANGAN2 <= 12 DO
         BEGIN
              WRITE(BILANGAN1,' ');
              WRITE(BILANGAN2,' ');
              BILANGAN1 := BILANGAN1 + 1;
              BILANGAN2 := BILANGAN2 + 2;
         END;
END.