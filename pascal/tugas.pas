PROGRAM TUGAS;
USES WINCRT;
VAR
   A, B : INTEGER;
BEGIN
     A := 5;
     B := 8;
     WHILE A<=10 DO
       BEGIN
            WRITE(A,' ');
            WRITE(B,' ');
            A := A + 1;
       END;
END.