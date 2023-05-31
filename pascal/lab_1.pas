PROGRAM TUGAS_LAB;
USES WINCRT;
VAR
   N,U : INTEGER;
BEGIN
   N := 5;
   U := 1;
   WHILE U <=8 DO
       BEGIN
           WRITELN('  ',N);
           U := U + 1;
       END;
END.