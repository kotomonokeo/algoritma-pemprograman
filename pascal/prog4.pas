PROGRAM PROG4;
USES WINCRT;
VAR
   A : INTEGER;
BEGIN
   A := 1;
   WHILE A<=5 DO
     BEGIN
         WRITE(A,' ');
         A := A+1;
     END;
END.