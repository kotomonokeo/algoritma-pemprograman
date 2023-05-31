PROGRAM PROG6;
USES WINCRT;
VAR
   AWAL,TENGAH,TETAP,HASIL : INTEGER;
BEGIN
   AWAL   := 18;
   TENGAH :=  5;
   TETAP  :=  7;
   WHILE AWAL<=22 DO
      BEGIN
         HASIL := AWAL + TENGAH - TETAP;
         WRITELN(AWAL,' + ',TENGAH,' - ',TETAP,' = ',HASIL);
         AWAL   := AWAL   + 1;
         TENGAH := TENGAH + 1;
      END;
   END.
