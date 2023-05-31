PROGRAM LAB4;
USES WINCRT;
VAR
   UT, SP, GT, SP1, SP2, T, A, B, BR, C : INTEGER;
BEGIN
     UT :=  8;
     SP :=  8;
     GT :=  0;
     A  := 43;
     C  :=  7;
     WHILE UT>=1 DO
       BEGIN
            SP1 := SP; T := 0;
            WHILE SP1<=8 DO
              BEGIN       
                   WRITE('  ');
                   SP1 := SP1 + 1;
              END;
            BR := UT; B := A;
            WHILE BR>=1 DO
              BEGIN
                   WRITE('  ',B);
                   BR := BR - 1;
                   T  :=  T + B;
                   B  :=  B + 1;
              END;
            SP2 := SP;
            WHILE SP2<=8 DO
              BEGIN
                   WRITE('  ');
                   SP2 := SP2 + 1;
              END;
            WRITELN(' = ',T);
            GT := GT + T;
            SP := SP - 1;
            UT := UT - 1;
            A  :=  A - C;
            C  :=  C - 1;
       END;
     WRITELN('-------------------------------------------------- +');
     WRITELN('TOTAL KESELURUHAN                    = ',GT);
END.
     