PROGRAM PROG9;
USES WINCRT;
VAR
   UT, BR : INTEGER;
BEGIN
     UT := 2;
     WHILE UT <= 3 DO
       BEGIN
            BR := 1;
            WHILE BR <= 3 DO
              BEGIN
                   WRITELN(UT,' ',BR);
                   BR := BR + 1;
              END;
            UT := UT + 1;
       END;
END.

             