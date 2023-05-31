PROGRAM PROG27;
USES WINCRT;
VAR
   UT, GT, TOT, BR, SP, B, T : INTEGER;
BEGIN
     B := 10;
     GT:=  0;
     FOR UT:=9 DOWNTO 1 DO
     BEGIN
          FOR SP:=B DOWNTO 1 DO
             BEGIN
                  WRITE('  ');
                  T := 0;
             END;

          FOR BR:=UT TO 9 DO
             BEGIN
                  T := T + UT;
                  WRITE(UT,' ');
             END;

          WRITE(' = ',T);
          WRITELN;
          GT:= GT + T;
          B := B -1;
     END;
     WRITELN('---------------------------+');
     WRITELN('    TOTAL KESELURUHAN  = ',GT);
END.
