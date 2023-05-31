PROGRAM PROG5;
USES WINCRT;
VAR
   B : INTEGER;
BEGIN
     B := 200;
     WHILE B>=100 DO
        BEGIN
            WRITE(B,' ');
            B := B-20;
        END;
END.