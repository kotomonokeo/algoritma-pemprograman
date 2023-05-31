PROGRAM PROG12;
USES WINCRT;
VAR
   UT, SATU, BR : INTEGER;
BEGIN
     UT  :=1;
     SATU:=1;
     WHILE UT <=7 DO
       BEGIN
            BR := UT;
            WHILE BR>=1 DO
              BEGIN
                   WRITE(SATU,' ');
                   BR:= BR - 1;
              END;
            WRITELN;
            UT:= UT + 1;
       END;
END.
