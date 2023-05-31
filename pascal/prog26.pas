PROGRAM PROG26;
USES WINCRT;
VAR
   SS, BR, CK : INTEGER;
BEGIN
     CK := 2;
     FOR SS :=1 TO 7 DO
        BEGIN
             FOR BR := SS DOWNTO 1 DO
                BEGIN
                     WRITE(CK,' ');
                END;
             WRITELN;
        END;
END.