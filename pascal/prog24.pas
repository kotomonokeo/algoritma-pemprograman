PROGRAM PROG24;
USES WINCRT;
VAR
   TM, X : INTEGER;
BEGIN
     TM := 1;
     FOR X:=1 TO 7 DO
        BEGIN
             WRITE(TM,' ');
             TM := TM + 2;
        END;
END.