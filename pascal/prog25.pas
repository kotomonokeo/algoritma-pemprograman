PROGRAM PROG25;
USES WINCRT;
VAR
   UT, T, BR, TOT, GT : INTEGER;
BEGIN
     GT := 0;
     FOR UT:=2 TO 4 DO
        BEGIN
             T  := 0;
             TOT:= 0;
             FOR BR := 4 DOWNTO 2 DO
                BEGIN
                     T  := UT + BR;
                     WRITELN(UT,'+',BR,'=',T);
                     TOT:= TOT + T;
                END;
             WRITELN('------------ +');
             WRITELN('TOTAL = ',TOT);
             GT := GT + T;
        END;
     WRITELN;
     WRITELN('TOTAL KESELURUHAN = ',GT);
END.