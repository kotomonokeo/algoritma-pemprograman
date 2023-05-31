PROGRAM PROG30;
USES WINCRT;
VAR
   A : INTEGER;
BEGIN
     A := 1;
     REPEAT
           WRITE(A,'  ');
           A := A + 1;
     UNTIL (A>=6);
END.