PROGRAM PROG7;
USES WINCRT;
VAR
   AWAL,TENGAH,HASIL,TENGAH2,HASIL2 : INTEGER;
BEGIN
   AWAL    :=  3;
   TENGAH  :=  9;
   TENGAH2 := 12;
   WHILE TENGAH>=4 DO
      BEGIN
         HASIL   := AWAL + TENGAH;
         HASIL2  := HASIL * TENGAH2;
         WRITELN(AWAL,' + ',TENGAH,' = ',HASIL,' * ',TENGAH2,' = ',HASIL2);
         TENGAH  := TENGAH - 1;
         TENGAH2 := TENGAH2 + 2;
      END;
END.